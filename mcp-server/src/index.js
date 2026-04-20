import { Server } from '@modelcontextprotocol/sdk/server/index.js';
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';
import {
  CallToolRequestSchema,
  ListToolsRequestSchema,
} from '@modelcontextprotocol/sdk/types.js';
import { readFileSync, existsSync, mkdirSync } from 'fs';
import { join } from 'path';
import { execSync } from 'child_process';
import { diagnoseLog, extractTimingMetrics, extractDRCMetrics,
         extractAreaMetrics, extractPowerMetrics } from '../../src/diagnostic-engine.js';
import { generatePPASummary, parseSynthesisLog, parsePlacementLog,
         parseSTALog, parseDRCReport, parsePowerReport,
         parseORFSReport } from '../../src/metrics-extractor.js';

// ── Constants ─────────────────────────────────────────────────────────────────
const PROJ     = '/mnt/c/eda/hw2/mypj1';
const WORKSPACE = '/workspace';
const CONTAINER = 'orfs-agent';
const ORFS_FLOW = '/OpenROAD-flow-scripts/flow';
const YOSYS_BIN = '/OpenROAD-flow-scripts/tools/install/yosys/bin/yosys';
const OR_BIN    = '/OpenROAD-flow-scripts/tools/install/OpenROAD/bin/openroad';
const DOCKER_PATH = '/OpenROAD-flow-scripts/tools/install/yosys/bin:' +
                   '/OpenROAD-flow-scripts/tools/install/OpenROAD/bin:' +
                   '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin';

// ── Helpers ──────────────────────────────────────────────────────────────────
function execHost(cmd, opts = {}) {
  try {
    return {
      ok: true,
      out: execSync(cmd, { encoding: 'utf-8', timeout: opts.timeout || 300000, ...opts }),
    };
  } catch (e) {
    return { ok: false, out: e.stdout || e.stderr || e.message };
  }
}

function execDocker(cmd) {
  return execHost(`docker exec ${CONTAINER} ${cmd}`);
}

function execDockerWithPath(cmd) {
  return execHost(`docker exec ${CONTAINER} sh -c "export PATH=${DOCKER_PATH} && ${cmd}"`);
}

function mkdirp(p) { try { mkdirSync(p, { recursive: true }); } catch {} }

function fmt(content, isError = false) {
  return { content: [{ type: 'text', text: content }], isError };
}

// ── Tool definitions ─────────────────────────────────────────────────────────
const TOOLS = [
  // ── Basic tools ──────────────────────────────────────────────────────────
  {
    name: 'docker_exec',
    description: 'Execute a shell command inside the orfs-agent container.',
    inputSchema: {
      type: 'object',
      properties: {
        command: { type: 'string', description: 'Shell command to run inside the container' },
      },
      required: ['command'],
    },
  },
  {
    name: 'yosys',
    description: 'Run Yosys synthesis inside the container.',
    inputSchema: {
      type: 'object',
      properties: {
        args:    { type: 'string', description: 'yosys arguments, e.g. "-s /workspace/scripts/synth.ys"' },
        workdir: { type: 'string', description: 'Working directory (default: /workspace)' },
      },
      required: ['args'],
    },
  },
  {
    name: 'openroad',
    description: 'Run OpenROAD via Tcl script inside the container.',
    inputSchema: {
      type: 'object',
      properties: {
        scriptFile: { type: 'string', description: 'Path to Tcl script inside container' },
        script:     { type: 'string', description: 'Inline Tcl script (alternative to scriptFile)' },
      },
    },
  },

  // ── Design setup tools ──────────────────────────────────────────────────
  {
    name: 'check_design',
    description: 'Validate RTL and SDC files before synthesis.',
    inputSchema: {
      type: 'object',
      properties: {
        rtl_dir:     { type: 'string', description: 'Path to RTL directory (default: <proj>/design/rtl)' },
        sdc_file:    { type: 'string', description: 'Path to SDC file (default: <proj>/design/constraint.sdc)' },
        module_name: { type: 'string', description: 'Expected top module name (default: ALU)' },
      },
    },
  },
  {
    name: 'generate_config',
    description: 'Generate or update config.mk and constraint.sdc for sky130hd.',
    inputSchema: {
      type: 'object',
      properties: {
        design_name: { type: 'string', description: 'Top module name (default: ALU)' },
        clock_port:  { type: 'string', description: 'Clock port name (default: clock)' },
        period:      { type: 'number', description: 'Clock period in ns (default: 10.0)' },
        utilization: { type: 'number', description: 'Core utilization % (default: 40)' },
        platform:   { type: 'string', description: 'PDK platform (default: sky130hd)' },
      },
    },
  },

  // ── Core flow tools ─────────────────────────────────────────────────────
  {
    name: 'run_stage',
    description: 'Run a single backend stage (synth|1_synth, floorplan|2_floorplan, place|3_place, cts|4_1_cts, route|5_1_route, signoff|6_report) using ORFS make.',
    inputSchema: {
      type: 'object',
      properties: {
        stage: {
          type: 'string',
          description: 'Stage name: synth, floorplan, place, cts, route, signoff, or all',
        },
        overrides: {
          type: 'object',
          description: 'config.mk overrides for this run, e.g. { CLOCK_PERIOD: "12.0", CORE_UTILIZATION: "35" }',
        },
      },
      required: ['stage'],
    },
  },
  {
    name: 'run_flow',
    description: 'Run ORFS flow up to a given stage (synth→place by default, all stages via "all").',
    inputSchema: {
      type: 'object',
      properties: {
        stage: {
          type: 'string',
          enum: ['synth', 'floorplan', 'place', 'cts', 'route', 'signoff', 'all'],
          description: 'Stage to run (default: all → up to place on WSL2)',
        },
        design_name: { type: 'string', description: 'Design name (default: ALU)' },
      },
    },
  },

  // ── Report & diagnostics ─────────────────────────────────────────────────
  {
    name: 'get_report',
    description: 'Get metrics summary for a completed stage (synth|place|sta|drc|power).',
    inputSchema: {
      type: 'object',
      properties: {
        stage: {
          type: 'string',
          enum: ['synth', 'place', 'sta', 'drc', 'power', 'all'],
          description: 'Which stage report to extract (default: all)',
        },
        path: { type: 'string', description: 'Explicit log/report path on host' },
      },
    },
  },
  {
    name: 'diagnose_failure',
    description: 'Parse the latest log for a failing stage and return error classification + recovery suggestions.',
    inputSchema: {
      type: 'object',
      properties: {
        stage: { type: 'string', description: 'Stage that failed (default: last run)' },
        log_path: { type: 'string', description: 'Explicit path to log file on host' },
      },
    },
  },
  {
    name: 'generate_ppa_report',
    description: 'Extract PPA metrics from all stage logs/reports and write results/ppa_summary.md.',
    inputSchema: {
      type: 'object',
      properties: {},
    },
  },

  // ── QoR optimization ─────────────────────────────────────────────────────
  {
    name: 'run_qor',
    description: 'Run multi-round QoR sweep varying CLOCK_PERIOD and CORE_UTILIZATION. Returns best config.',
    inputSchema: {
      type: 'object',
      properties: {
        max_rounds: { type: 'number', description: 'Max rounds (default: 4)' },
        target: { type: 'string', description: 'ORFS make target (default: 3_place)' },
      },
    },
  },
];

// ── Tool handlers ────────────────────────────────────────────────────────────

const TOOL_HANDLERS = {

  // ── docker_exec ───────────────────────────────────────────────────────────
  docker_exec(args) {
    const { ok, out } = execDocker(args.command);
    return fmt(out, !ok);
  },

  // ── yosys ────────────────────────────────────────────────────────────────
  yosys(args) {
    const workdir = args.workdir || WORKSPACE;
    const logFile = join(PROJ, 'logs', 'yosys.log');
    const { ok, out } = execDockerWithPath(
      `cd ${workdir} && ${YOSYS_BIN} ${args.args} > ${logFile} 2>&1; echo EXIT:$?`
    );
    const log = readFileSync(logFile, 'utf-8');
    return fmt(`[yosys log tail]\n${log.slice(-800)}\n\nExit: ${ok ? 0 : 'FAILED'}`, !ok);
  },

  // ── openroad ─────────────────────────────────────────────────────────────
  openroad(args) {
    let cmd;
    if (args.scriptFile) {
      const { ok, out } = execDocker(
        `${OR_BIN} -exit ${args.scriptFile} 2>&1`
      );
      return fmt(out, !ok);
    }
    if (args.script) {
      const esc = args.script.replace(/"/g, '\\"').replace(/\n/g, '\\n');
      const { ok, out } = execDocker(
        `sh -c "echo \\"${esc}\\" | ${OR_BIN} -nosave -shell 2>&1"`
      );
      return fmt(out, !ok);
    }
    return fmt('openroad: provide script or scriptFile', true);
  },

  // ── check_design ─────────────────────────────────────────────────────────
  check_design(args) {
    const rtlDir  = args.rtl_dir     || join(PROJ, 'design', 'rtl');
    const sdcFile = args.sdc_file    || join(PROJ, 'design', 'constraint.sdc');
    const module  = args.module_name || 'ALU';
    const issues  = [];

    const check = (cond, msg) => {
      if (!cond) issues.push(`✗ ${msg}`);
      else issues.push(`✓ ${msg}`);
    };

    check(existsSync(rtlDir), `RTL dir exists: ${rtlDir}`);

    let vfiles;
    try {
      vfiles = execSync(`ls "${rtlDir}"/*.v 2>/dev/null`, { encoding: 'utf-8' }).trim().split('\n');
      check(vfiles.length > 0 && vfiles[0], `Verilog files found: ${vfiles.length}`);
    } catch { check(false, 'No .v files found in RTL dir'); vfiles = []; }

    if (vfiles[0]) {
      try {
        const src = readFileSync(vfiles[0], 'utf-8');
        check(src.includes(`module ${module}`), `Module "${module}" found`);
        check(/\b(clock|clk)\b/i.test(src), 'Clock port declared in top module');
      } catch (e) { check(false, `Cannot read RTL: ${e}`); }
    }

    check(existsSync(sdcFile), `SDC file exists: ${sdcFile}`);
    if (existsSync(sdcFile)) {
      try {
        const sdc = readFileSync(sdcFile, 'utf-8');
        check(/create_clock/i.test(sdc), 'SDC: create_clock declared');
      } catch {}
    }

    const allOk = issues.filter(i => i.startsWith('✗')).length === 0;
    return fmt(
      `${allOk ? '=== check_design: PASS ===' : '=== check_design: FAIL ==='}\n` +
      issues.join('\n'),
      !allOk
    );
  },

  // ── generate_config ──────────────────────────────────────────────────────
  generate_config(args) {
    const {
      design_name  = 'ALU',
      clock_port   = 'clock',
      period       = 10.0,
      utilization  = 40,
      platform     = 'sky130hd',
    } = args;

    const cfgDir = join(PROJ, 'design');
    mkdirp(cfgDir);
    mkdirp(join(cfgDir, 'rtl'));

    const sdc = [
      `# SDC timing constraints — ${design_name} / ${platform}`,
      `create_clock [get_ports ${clock_port}] -period ${period} -name ${clock_port}`,
      `set_input_delay -clock ${clock_port} 1.0 [all_inputs]`,
      `set_output_delay -clock ${clock_port} 1.0 [all_outputs]`,
      `set_clock_uncertainty 0.5 [get_clocks ${clock_port}]`,
      '',
    ].join('\n');

    const mk = [
      `# ORFS config — ${design_name} / ${platform}`,
      `export DESIGN_NAME = ${design_name}`,
      `export PLATFORM    = ${platform}`,
      `export DESIGN_HOME = /workspace/designs`,
      `export VERILOG_FILES = $(DESIGN_HOME)/alu/src/${design_name}.v`,
      `export SDC_FILE      = $(DESIGN_HOME)/alu/sky130hd/constraint.sdc`,
      `export CORE_UTILIZATION = ${utilization}`,
      `export CLOCK_PERIOD  = ${period}`,
      `export TNS_END_PERCENT = 100`,
      `export OPENROAD_HIERARCHICAL = 1`,
      `export SWAP_ARITH_OPERATORS = 0`,
      `export ADDER_MAP_FILE = `,
      `export FILL_CELLS ?= sky130_fd_sc_hd__fill_1 sky130_fd_sc_hd__fill_2 sky130_fd_sc_hd__fill_4 sky130_fd_sc_hd__fill_8`,
    ].join('\n');

    writeFileSync(join(cfgDir, 'constraint.sdc'), sdc);
    writeFileSync(join(cfgDir, 'config.mk'), mk);

    // Also create ORFS design structure
    const orfsDir = join(cfgDir, 'designs', 'alu');
    mkdirp(join(orfsDir, 'src'));
    mkdirp(join(orfsDir, 'sky130hd'));
    writeFileSync(join(orfsDir, 'config.mk'), mk);
    writeFileSync(join(orfsDir, 'sky130hd', 'constraint.sdc'), sdc);

    // Copy RTL as uppercase for ORFS
    try {
      const rtlSrc = join(cfgDir, 'rtl', 'alu.v');
      if (existsSync(rtlSrc)) {
        execHost(`cp "${rtlSrc}" "${join(orfsDir, 'src', `${design_name}.v`)}"`);
      }
    } catch {}

    return fmt(
      `=== generate_config: done ===\n` +
      `SDC:     ${join(cfgDir, 'constraint.sdc')}\n` +
      `config:  ${join(cfgDir, 'config.mk')}\n` +
      `ORFS:    ${join(orfsDir, 'config.mk')}\n` +
      `Design: ${design_name}  Platform: ${platform}  Period: ${period}ns  Util: ${utilization}%`
    );
  },

  // ── run_stage ────────────────────────────────────────────────────────────
  run_stage(args) {
    const stage = args.stage || 'all';
    const overrides = args.overrides || {};

    mkdirp(join(PROJ, 'logs'));

    // Map stage name → ORFS make target
    const targetMap = {
      synth:     '1_synth',
      floorplan:  '2_floorplan',
      place:      '3_place',
      cts:        '4_1_cts',
      route:      '5_1_route',
      signoff:    '6_report',
    };
    const makeTarget = targetMap[stage] || stage;

    // Apply config overrides
    if (Object.keys(overrides).length > 0) {
      const cfgLines = Object.entries(overrides)
        .map(([k, v]) => `export ${k} = ${v}`)
        .join('\n');
      const cfgContent = [
        `export DESIGN_NAME = ALU`,
        `export PLATFORM    = sky130hd`,
        `export DESIGN_HOME = /workspace/designs`,
        `export VERILOG_FILES = $(DESIGN_HOME)/alu/src/ALU.v`,
        `export SDC_FILE      = $(DESIGN_HOME)/alu/sky130hd/constraint.sdc`,
        `export OPENROAD_HIERARCHICAL = 1`,
        `export SWAP_ARITH_OPERATORS = 0`,
        cfgLines,
      ].join('\n');
      const esc = cfgContent.replace(/"/g, '\\"').replace(/\n/g, '\\n');
      execDocker(`sh -c "echo \\"${esc}\\" > /workspace/designs/alu/config.mk"`);
    }

    const logFile = join(PROJ, 'logs', `${stage}.log`);
    const cmd = [
      `cd ${ORFS_FLOW}`,
      `&& make DESIGN_CONFIG=/workspace/designs/alu/config.mk ${makeTarget} 2>&1`,
      `| tee /workspace/logs/${stage}.log`,
      '; echo "FLOW_EXIT:$?"',
    ].join(' ');

    const { ok, out } = execDocker(cmd);

    // Copy results
    const resultPaths = [
      `/OpenROAD-flow-scripts/flow/results/sky130hd/ALU/base/1_2_yosys.v`,
      `/OpenROAD-flow-scripts/flow/results/sky130hd/ALU/base/3_place.odb`,
      `/OpenROAD-flow-scripts/flow/results/sky130hd/ALU/base/2_floorplan.odb`,
    ];
    for (const p of resultPaths) {
      const name = p.split('/').pop();
      try {
        execHost(`docker cp orfs-agent:${p} "${join(PROJ, 'results', name)}" 2>/dev/null`);
      } catch {}
    }

    // Read log tail
    let logTail = '';
    try { logTail = readFileSync(logFile, 'utf-8').slice(-600); } catch {}

    // Run diagnostic
    let diag = null;
    try { diag = diagnoseLog(readFileSync(logFile, 'utf-8')); } catch {}

    const diagMsg = diag && diag.errorType !== 'none'
      ? `\n\n[DIAGNOSTIC]\nType: ${diag.errorType}\nSeverity: ${diag.severity}\n${diag.suggestions.map(s => `  → ${s}`).join('\n')}`
      : '';

    return fmt(
      `[run_stage: ${stage} → ${makeTarget}]\n` +
      `Status: ${ok ? 'OK' : 'FAILED'}\n\n` +
      `[Log tail]\n${logTail}${diagMsg}`,
      !ok
    );
  },

  // ── run_flow ─────────────────────────────────────────────────────────────
  run_flow(args) {
    const stage = args.stage || 'all';
    mkdirp(join(PROJ, 'logs'));
    mkdirp(join(PROJ, 'results'));

    const stages = stage === 'all'
      ? ['synth', 'floorplan', 'place']
      : [stage];

    const results = [];
    for (const s of stages) {
      const r = TOOL_HANDLERS.run_stage({ stage: s, overrides: {} });
      results.push({ stage: s, isError: r.isError, summary: r.content[0].text.split('\n').slice(0, 5).join('\n') });
      if (r.isError) break;
    }

    const allOk = results.every(r => !r.isError);
    const summary = results.map(r =>
      `  ${r.isError ? '✗' : '✓'} ${r.stage}: ${r.summary.split('\n')[0]}`
    ).join('\n');

    return fmt(
      `=== run_flow ${stage}: ${allOk ? 'ALL PASSED' : 'FAILED'} ===\n${summary}`,
      !allOk
    );
  },

  // ── get_report ───────────────────────────────────────────────────────────
  get_report(args) {
    const stageArg = args.stage || 'all';
    const logDir  = join(PROJ, 'logs');
    const repDir  = join(PROJ, 'reports');
    mkdirp(repDir);

    const stages = stageArg === 'all'
      ? ['synth', 'place', 'sta', 'drc', 'power']
      : [stageArg];

    const reports = [];

    for (const s of stages) {
      let content = '';
      const logPath = join(logDir, `${s}.log`);

      // Try log files first
      if (existsSync(logPath)) {
        content = readFileSync(logPath, 'utf-8');
      }

      // Then try ORFS results dir
      if (!content) {
        const orfsResults = {
          synth:  '/OpenROAD-flow-scripts/flow/results/sky130hd/ALU/base/1_2_yosys.v',
          place:  '/OpenROAD-flow-scripts/flow/results/sky130hd/ALU/base/3_place.odb',
          floorplan: '/OpenROAD-flow-scripts/flow/results/sky130hd/ALU/base/2_floorplan.odb',
        };
        // We can't read .odb directly; parse from log
        try {
          const log = readFileSync(join(logDir, 'orfs_flow.log'), 'utf-8');
          if (!content) content = log;
        } catch {}
      }

      let metrics = {};
      if (s === 'synth') metrics = parseSynthesisLog(content);
      if (s === 'place') metrics = parsePlacementLog(content);
      if (s === 'sta')   metrics = parseSTALog(content);
      if (s === 'drc')  metrics = parseDRCReport(content);
      if (s === 'power') metrics = parsePowerReport(content);

      reports.push({ stage: s, ...metrics });
    }

    // Build markdown summary
    const md = [
      `# Stage Reports — ALU / sky130hd`,
      `| Stage | Cells | WNS | TNS | DRC | Power |`,
      `|-------|-------|-----|-----|-----|-------|`,
      ...reports.map(r => [
        r.stage,
        r.cellCount ?? '—',
        r.wns != null ? r.wns.toFixed(3) : '—',
        r.tns != null ? r.tns.toFixed(3) : '—',
        r.drcCount ?? '0',
        r.totalPower || r.total || '—',
      ].join(' | ')),
    ].join('\n');

    const reportPath = join(repDir, 'stage_reports.md');
    writeFileSync(reportPath, md);

    return fmt(`${md}\n\nFull report: ${reportPath}`);
  },

  // ── diagnose_failure ─────────────────────────────────────────────────────
  diagnose_failure(args) {
    const stage = args.stage || 'last';
    const explicitPath = args.log_path;

    let logPath;
    if (explicitPath) {
      logPath = explicitPath;
    } else {
      logPath = join(PROJ, 'logs', `${stage}.log`);
      if (!existsSync(logPath)) logPath = join(PROJ, 'logs', 'orfs_flow.log');
    }

    if (!existsSync(logPath)) {
      return fmt(`Log file not found: ${logPath}`, true);
    }

    const content = readFileSync(logPath, 'utf-8');
    const diag = diagnoseLog(content);

    if (diag.errorType === 'none') {
      return fmt(
        `=== diagnose: NO ERRORS DETECTED ===\n` +
        `Log: ${logPath}\n` +
        `${diag.summary}`
      );
    }

    const recovery = diag.recoverable
      ? '✓ RECOVERABLE — retry with suggested parameters'
      : '✗ NOT RECOVERABLE on this platform';

    return fmt(
      `=== diagnose_failure ===\n` +
      `Log: ${logPath}\n` +
      `Error type:   ${diag.errorType}\n` +
      `Severity:     ${diag.severity}\n` +
      `Recoverable:  ${recovery}\n` +
      `\nSummary:\n${diag.summary}\n` +
      `\nSuggestions:\n${diag.suggestions.map(s => `  → ${s}`).join('\n')}`
    , diag.severity === 'critical');
  },

  // ── generate_ppa_report ───────────────────────────────────────────────────
  generate_ppa_report() {
    const repDir  = join(PROJ, 'reports');
    mkdirp(repDir);
    const allMetrics = [];

    // Automatically extract from ORFS report files (authoritative source)
    for (const stage of ['synth', 'gp', 'place']) {
      const m = parseORFSReport(stage);
      if (Object.keys(m).length > 2) allMetrics.push(m);
    }

    // Fallback: also try host-side logs
    const logDir = join(PROJ, 'logs');
    try {
      const log = readFileSync(join(logDir, 'orfs_flow.log'), 'utf-8');
      const ps = parseSynthesisLog(log);
      if (ps.cellCount) {
        const existing = allMetrics.find(m => m.stage === 'synth');
        if (!existing) allMetrics.unshift(ps);
      }
    } catch {}

    generatePPASummary(allMetrics, join(repDir, 'ppa_summary.md'));

    return fmt(
      `=== PPA Report Generated ===\n` +
      `Output: ${join(repDir, 'ppa_summary.md')}\n\n` +
      `Stages analyzed: ${allMetrics.length}\n` +
      allMetrics.map(m =>
        `  ${m.stage}: cells=${m.cellCount ?? '—'}, wns=${m.wns ?? '—'}ns, ` +
        `tns=${m.tns ?? '—'}ns, fmax=${m.fmax ?? '—'}MHz, drc=${m.drcCount ?? 0}`
      ).join('\n')
    );
  },

  // ── run_qor ───────────────────────────────────────────────────────────────
  async run_qor(args) {
    const maxRounds = args.max_rounds || 4;
    const target   = args.target || '3_place';

    mkdirp(join(PROJ, 'results'));

    // Import QoR module
    let qorMod;
    try {
      qorMod = await import('../../src/qor-optimizer.js');
    } catch (e) {
      return fmt(`QoR optimizer import failed: ${e.message}`, true);
    }

    try {
      const result = await qorMod.runQoRSweep({
        execDocker,
        readFileSync,
        resultsDir: PROJ,
      });

      // Save best config
      const bestPath = join(PROJ, 'results', 'best_config.mk');
      const bestCfg = [
        `export DESIGN_NAME = ALU`,
        `export PLATFORM    = sky130hd`,
        `export DESIGN_HOME = /workspace/designs`,
        ...Object.entries(result.bestConfig).map(([k, v]) => `export ${k} = ${v}`),
      ].join('\n');
      writeFileSync(bestPath, bestCfg);

      return fmt(
        `=== run_qor: COMPLETE ===\n` +
        `Rounds run: ${result.results.length}\n` +
        `Best config: ${JSON.stringify(result.bestConfig)}\n` +
        `Best WNS: ${result.bestMetrics?.wns ?? 'N/A'}\n` +
        `Best cells: ${result.bestMetrics?.cellCount ?? 'N/A'}\n` +
        `Notes: ${result.bestNotes}\n\n` +
        `Comparison CSV: ${result.comparisonCsv}\n` +
        `Best config:    ${bestPath}`
      );
    } catch (e) {
      return fmt(`run_qor failed: ${e.message}`, true);
    }
  },
};

// ── MCP Server bootstrap ───────────────────────────────────────────────────────
const server = new Server(
  { name: 'orfs-mcp-server', version: '3.0.0' },
  { capabilities: { tools: {} } },
);

server.setRequestHandler(ListToolsRequestSchema, () => ({ tools: TOOLS }));

server.setRequestHandler(CallToolRequestSchema, async (request) => {
  const { name, arguments: args } = request.params;
  const handler = TOOL_HANDLERS[name];
  if (!handler) return fmt(`Unknown tool: ${name}`, true);
  try {
    return await Promise.resolve(handler(args || {}));
  } catch (err) {
    return fmt(`Error: ${err.message}\n${err.stack}`, true);
  }
});

const transport = new StdioServerTransport();
server.connect(transport).catch(console.error);
