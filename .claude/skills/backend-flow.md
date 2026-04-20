# backend-flow — OpenROAD sky130hd PnR Automation Skill (v3)

## Invocation
```
/backend-flow [stage=<synth|floorplan|place|cts|route|signoff|report|qor|diagnose>]
```

## Description

Full digital backend automation for **sky130hd** using Claude Code + MCP `orfs` tools.
Implements: design check → config generation → synthesis → floorplan → placement →
CTS → routing → signoff → QoR optimization with automatic failure diagnosis.

---

## MCP Tools Available

| Tool | Purpose |
|------|---------|
| `mcp__orfs__check_design` | Validate RTL + SDC |
| `mcp__orfs__generate_config` | Write config.mk + constraint.sdc |
| `mcp__orfs__run_stage` | Run a single ORFS stage with optional param overrides |
| `mcp__orfs__run_flow` | Run synth → floorplan → place (or all) |
| `mcp__orfs__get_report` | Extract PPA metrics from stage logs |
| `mcp__orfs__diagnose_failure` | Classify errors + suggest recovery |
| `mcp__orfs__generate_ppa_report` | Write results/ppa_summary.md |
| `mcp__orfs__run_qor` | Multi-round QoR sweep → best config |
| `mcp__orfs__docker_exec` | Arbitrary container command |

---

## Stage Pipeline

```
check → generate_config → run_stage(synth) → run_stage(floorplan)
  → run_stage(place) → [run_stage(cts)] → [run_stage(route)]
  → [run_stage(signoff)] → get_report(all) → generate_ppa_report
```

> **Note:** TritonCTS triggers SIGILL on WSL2 (CPU instruction incompatibility).
> **Routing and signoff work fine on WSL2.** For combinational designs (no FF),
> skip CTS by copying `3_place.odb` → `4_cts.odb` before routing.

---

## Step-by-step Procedure

### Step 1 — Design Check
```
Use mcp__orfs__check_design
  rtl_dir:     /mnt/c/eda/hw2/mypj1/design/rtl
  sdc_file:    /mnt/c/eda/hw2/mypj1/design/constraint.sdc
  module_name: ALU
```
**Failure → STOP.** Report specific issue. Common causes:
- Module name mismatch (ALU vs alu — module name is **uppercase**)
- SDC `create_clock` port doesn't match RTL `clock` port

### Step 2 — Generate Config
```
Use mcp__orfs__generate_config
  design_name: ALU
  clock_port:  clock
  period:      10.0
  utilization: 40
  platform:    sky130hd
```
Creates ORFS design structure at `/workspace/designs/alu/` automatically.

### Step 3 — Run Synthesis
```
Use mcp__orfs__run_stage
  stage: synth
```
ORFS target: `1_synth` — Yosys elaboration + ABC mapping to sky130hd cells.
On completion, run `get_report stage=synth` for cell count + area.

### Step 4 — Floorplan
```
Use mcp__orfs__run_stage
  stage: floorplan
```
ORFS target: `2_floorplan` — die/core area, tapcell, PDN, I/O placement.

### Step 5 — Placement
```
Use mcp__orfs__run_stage
  stage: place
```
ORFS target: `3_place` — global placement → detail placement.
On completion, run `get_report stage=place` for instance count + HPWL.

### Step 6 — CTS
```
Use mcp__orfs__run_stage
  stage: cts
```
ALU is purely **combinational** (no flip-flops) → expect "No clock nets".
This is **expected** — safe to proceed to routing.

**WSL2 workaround (skip CTS for any design):**
```bash
cp results/sky130hd/ALU/base/3_place.odb results/sky130hd/ALU/base/4_cts.odb
cp results/sky130hd/ALU/base/3_place.sdc results/sky130hd/ALU/base/4_cts.sdc
touch results/sky130hd/ALU/base/4_cts.odb
make DESIGN_CONFIG=/workspace/config.mk -o results/.../4_cts.odb grt
```

If CTS fails with SIGILL:
```
Use mcp__orfs__diagnose_failure
  stage: cts
```
Then retry on native Linux workstation.

### Step 7 — Routing (WSL2 compatible with skip)
```
Use mcp__orfs__run_stage
  stage: route
```
ORFS target: `5_1_grt` (global route) → `5_2_route` (detail route) → DRC check.
**On WSL2: run `grt` first (may require `-o 4_cts.odb` to skip CTS rebuild):**
```bash
touch results/sky130hd/ALU/base/4_cts.odb
make DESIGN_CONFIG=/workspace/config.mk -o results/.../4_cts.odb grt
make DESIGN_CONFIG=/workspace/config.mk -o results/.../4_cts.odb -o results/.../5_1_grt.odb 5_2_route
```
On failure:
```
Use mcp__orfs__diagnose_failure
  stage: route
```

### Step 8 — Signoff (WSL2 compatible)
```
Use mcp__orfs__run_stage
  stage: signoff
```
ORFS target: `6_report` — STA, power, IR drop, final netlist, GDSII export.
**WSL2:** Use `-o` flags to skip CTS/grt re-build:
```bash
touch results/sky130hd/ALU/base/5_2_route.odb
make DESIGN_CONFIG=/workspace/config.mk \
  -o results/.../4_cts.odb -o results/.../5_1_grt.odb -o results/.../5_2_route.odb \
  finish
```
On failure:
```
Use mcp__orfs__diagnose_failure
  stage: signoff
```

### Step 9 — Extract Reports
```
Use mcp__orfs__get_report
  stage: all
```

### Step 10 — Generate PPA Summary
```
Use mcp__orfs__generate_ppa_report
```
**Auto-extracts from ORFS report files:**
- `reports/sky130hd/ALU/base/synth_stat.txt` → cell count, area, cell types
- `reports/sky130hd/ALU/base/3_global_place.rpt` → WNS, TNS, FMax (global placement)
- `reports/sky130hd/ALU/base/3_detailed_place.rpt` → WNS, TNS, FMax (detailed placement)
- No need to parse raw logs — `parseORFSReport()` reads the structured `.rpt` files

---

## Automatic Failure Diagnosis

```
Use mcp__orfs__diagnose_failure
  stage: <stage>
```

**Error types + recovery:**

| Error Type | Severity | Recoverable | Fix |
|-----------|----------|-------------|-----|
| timing_violation_setup | error | ✓ | ↑ CLOCK_PERIOD 20%, ↓ CORE_UTILIZATION |
| timing_violation_hold | error | ✓ | Hold fix → routing fixes it |
| drc_violation | error | ✓ | ↓ CORE_UTILIZATION 5%, adjust routing params |
| synthesis_error | error | ✓ | Check module name, port names in RTL vs SDC |
| placement_failure | error | ✓ | ↓ CORE_UTILIZATION to 35%, adjust PIN_ACCESS |
| cts_no_clock_nets | warning | ✓ | Expected for combinational designs; skip CTS |
| cts_sigal_instruction | critical | ✗ | Run on native Linux, not WSL2 |
| congestion | error | ✓ | ↓ CORE_UTILIZATION, adjust PIN_ACCESS_OFFSET |

---

## QoR Optimization

```
Use mcp__orfs__run_qor
  max_rounds: 4
  target: 3_place
```

**QoR sweep matrix:**

| Round | CLOCK_PERIOD | CORE_UTILIZATION | Notes |
|-------|-------------|-----------------|-------|
| baseline | 10.0ns | 40% | Baseline |
| slow_clock | 12.0ns | 40% | More timing margin |
| low_util | 10.0ns | 35% | Less congestion |
| relaxed | 12.0ns | 35% | Both relaxed |

**Best config** is selected by: WNS (closest to 0) → fewest cells.
Output: `results/qor_comparison.csv` + `results/best_config.mk`

---

## Retry Strategy (Parameter-level)

### If timing violation (WNS < −1.0 ns):
```
Use mcp__orfs__run_stage
  stage: synth
  overrides:
    CLOCK_PERIOD: "12.0"
```
Then re-run place → sta.

### If DRC violations > 0:
```
Use mcp__orfs__run_stage
  stage: place
  overrides:
    CORE_UTILIZATION: "35"
```

### If placement overflow:
```
Use mcp__orfs__run_stage
  stage: place
  overrides:
    CORE_UTILIZATION: "35"
    PIN_ACCESS_OFFSET: "2"
```

---

## Output Artifacts

```
results/
  ALU_synth.v         — Gate-level netlist (synthesis)
  ALU_final.v         — Gate-level netlist (final, with routing)
  6_final.gds         — GDSII 版图文件（可提交代工厂）
  ALU_final.def       — Final placement DEF
  layout_final.png    — 最终版图图片（2.5MB，KLayout导出）
  3_place.odb         — OpenROAD DB (placed)
  5_2_route.odb       — OpenROAD DB (routed)
  6_final.odb         — OpenROAD DB (final)
  best_config.mk      — Best config from QoR sweep
  qor_comparison.csv  — All QoR round results

reports/
  ppa_summary.md      — PPA table across all stages
  stage_reports.md    — Per-stage metrics
  sky130hd/ALU/base/6_finish.rpt  — Signoff WNS/TNS/FMax/Power
  sky130hd/ALU/base/5_route_drc.rpt — DRC report (空=0违例)
```

## Success Criteria

| Metric | Pass |
|--------|------|
| Timing WNS | ≥ −1.0 ns |
| DRC violations | = 0 |
| Placement failures | = 0 |
| Synthesis errors | = 0 |
| Antenna violations | = 0 |
| IR Drop | < 5% |
