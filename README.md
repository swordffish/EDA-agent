# OpenROAD EDA Backend Agent

Claude Code 集成 OpenROAD + Yosys EDA 工具链的自动化框架，基于 sky130hd PDK。

## 目录结构

```
mypj1/
├── .claude/                   # Claude Code 配置
│   ├── settings.json          # Hooks + Rules 配置
│   ├── settings.local.json    # 本地权限配置
│   ├── skills/
│   │   └── backend-flow.md    # 后端流程 Skill
│   ├── hooks/
│   │   ├── pre_flow_stage.sh  # 运行前检查钩子
│   │   └── post_flow_stage.sh # 运行后日志检查钩子
│   └── rules.md               # 流程规范与命名约定
├── .mcp.json                  # MCP Server 连接配置
├── mcp-server/
│   └── src/index.js           # MCP Server (orfs v2.0.0)
├── design/                    # 挂载到容器的输入文件
│   ├── config.mk              # sky130hd ORFS 配置
│   ├── constraint.sdc         # SDC 时序约束
│   ├── rtl/alu.v              # RTL 源文件
│   └── scripts/               # 各阶段 Tcl/Yosys 脚本
│       ├── synth.ys            # Yosys 综合脚本
│       ├── floorplan.tcl       # Floorplan
│       ├── place.tcl           # Placement
│       ├── cts.tcl             # Clock Tree Synthesis
│       ├── route.tcl           # Routing
│       └── signoff.tcl         # Signoff (STA/DRC/Power)
├── logs/                      # 各阶段日志
├── reports/                   # 工具输出报告
│   ├── signoff_summary.rpt    # STA 结果
│   ├── drc.rpt               # DRC 违规
│   ├── power.rpt             # 功耗报告
│   └── metrics.rpt           # 面积/单元统计
└── results/                  # 最终输出结果
    ├── alu_synth.v           # 综合后门级网表
    ├── alu_place.def         # 布局 DEF
    ├── alu_cts.def           # CTS 后 DEF
    ├── alu_route.def         # 布线后 DEF
    └── alu_final.v           # 最终网表
```

## MCP 工具一览

| 工具 | 功能 |
|------|------|
| `mcp__orfs__check_design` | 验证 RTL 和 SDC 完整性 |
| `mcp__orfs__generate_config` | 生成 config.mk + constraint.sdc |
| `mcp__orfs__yosys` | 运行 Yosys 综合 |
| `mcp__orfs__openroad` | 运行 OpenROAD 各阶段 Tcl 脚本 |
| `mcp__orfs__run_flow` | 自动执行单个或全部流程阶段 |
| `mcp__orfs__parse_report` | 解析 STA/DRC/Power/Metrics 报告 |
| `mcp__orfs__docker_exec` | 在容器中执行任意命令 |

## 快速启动

### 1. 启动长驻容器

```bash
docker run -d --name orfs-agent \
  -v $(pwd)/design:/workspace \
  openroad/orfs:latest sleep infinity
```

### 2. 验证工具链

```bash
# Yosys
docker exec orfs-agent /OpenROAD-flow-scripts/tools/install/yosys/bin/yosys --version

# OpenROAD
docker exec orfs-agent /OpenROAD-flow-scripts/tools/install/OpenROAD/bin/openroad --version
```

### 3. 运行后端流程

在 Claude Code 中：

```
/backend-flow stage=all
```

或分阶段运行：

```
/backend-flow stage=check
/backend-flow stage=config
/backend-flow stage=synth
/backend-flow stage=floorplan
/backend-flow stage=place
/backend-flow stage=cts
/backend-flow stage=route
/backend-flow stage=signoff
/backend-flow stage=report
```

## 后端流程阶段

```
check → generate_config → synth(Yosys)
                              ↓
                         floorplan
                              ↓
                         placement
                              ↓
                            cts
                              ↓
                         routing
                              ↓
                        signoff → reports
```

## 成功标准

| 指标 | 阈值 |
|------|------|
| WNS (最差负裕量) | ≥ −1.0 ns |
| TNS (总负裕量) | ≤ 0 ns |
| DRC 违规 | = 0 |
