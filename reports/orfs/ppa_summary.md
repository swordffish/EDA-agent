# ALU PPA Summary

## Flow Completed Successfully

**Date**: 2026/04/12  
**Platform**: sky130hd (130nm SF CMOS)  
**Design**: ALU (32-bit Arithmetic Logic Unit)

---

## Summary Results

| Metric | Value | Status |
|--------|-------|--------|
| **WNS** (Worst Negative Slack) | 0.00 ns | ✅ PASS |
| **TNS** (Total Negative Slack) | 0.00 ns | ✅ PASS |
| **Worst Slack** | 2.05 ns | ✅ PASS |
| **Clock Period** | 10.0 ns | - |
| **Fmax** | 125.85 MHz | - |
| **Critical Path Delay** | 6.45 ns | - |

---

## Power Analysis

| Group | Internal Power | Switching Power | Leakage Power | Total Power |
|-------|----------------|-----------------|--------------|-------------|
| Combinational | 2.13e-04 W | 2.56e-04 W | 2.44e-09 W | 4.69e-04 W |
| Sequential | 0.00e+00 W | 0.00e+00 W | 0.00e+00 W | 0.00e+00 W |
| **Total** | **0.21 mW** | **0.26 mW** | **< 0.01 nW** | **0.47 mW** |

---

## Cell Count (Synthesis)

| Cell Type | Count |
|-----------|-------|
| AND gates | ~113 |
| XOR gates | ~87+113=200 |
| NAND gates | ~117 |
| NOR gates | ~106 |
| MAJ3 (majority) | ~14 |
| Others | ~170 |
| **Total** | **~801 cells** |

---

## Area

- **Chip Area**: 5300 um² (5.3E+03)
- **Core Utilization**: 40% (target)

---

## Timing Violations

| Check | Count | Status |
|-------|-------|--------|
| Setup Violations | 0 | ✅ |
| Hold Violations | 0 | ✅ |
| Max Slew Violations | 0 | ✅ |
| Max Cap Violations | 0 | ✅ |
| Max Fanout Violations | 0 | ✅ |

---

## Output Files

| File | Location |
|------|----------|
| Final DEF | `results/ALU_final.def` |
| Final Verilog | `results/ALU_final.v` |
| GDS II | `results/ALU_final.gds` |
| Layout PNG | `results/layout_final.png` |
| Synthesized Netlist | `results/ALU_synth.v` |
| SPEF (parasitics) | `results/6_final.spef` |

---

## Flow Stages Completed

1. ✅ Yosys Synthesis
2. ✅ OpenROAD Floorplan
3. ✅ OpenROAD Placement
4. ✅ OpenROAD CTS (skipped - combinational design)
5. ✅ OpenROAD Routing
6. ✅ Signoff (STA/DRC/Power)