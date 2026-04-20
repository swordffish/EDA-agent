# run_openroad.tcl — Standalone OpenROAD PnR for ALU / sky130hd
# Single script: read netlist → floorplan → place → route → report

set LOG_DIR  "/workspace/logs"
set RES_DIR  "/workspace/results"
set REPORT_DIR "/workspace/reports"
set PLATFORM  "/OpenROAD-flow-scripts/flow/platforms/sky130hd"
set TECH_LEF  "$PLATFORM/lef/sky130_fd_sc_hd.tlef"
set CELL_LEF  "$PLATFORM/lef/sky130_fd_sc_hd_merged.lef"
set LIB       "$PLATFORM/lib/sky130_fd_sc_hd__tt_025C_1v80.lib"
set SDC       "/workspace/constraint.sdc"
set NETLIST   "/workspace/results/ALU_synth.v"

# ── Logging helper ────────────────────────────────────────────────────────────
proc logMsg {msg} {
  puts "\[OPENROAD\] $msg"
}

# ── 1. Read LEF ───────────────────────────────────────────────────────────────
logMsg "=== Step 1: Reading LEF files ==="
read_lef $TECH_LEF
read_lef $CELL_LEF

# ── 2. Read Liberty ──────────────────────────────────────────────────────────
logMsg "=== Step 2: Reading Liberty library ==="
read_liberty $LIB

# ── 3. Read cleaned RTL netlist (pre-processed by Yosys) ────────────────────
logMsg "=== Step 3: Reading cleaned Verilog netlist ==="
read_verilog /workspace/results/ALU_openroad.v
logMsg "Verilog modules found: [get_object_name [get_designs]]"
link_design ALU

# ── 4. Floorplan ─────────────────────────────────────────────────────────────
logMsg "=== Step 4: Floorplan ==="

# Set die and core areas (in microns, based on sky130hd grid)
# sky130hd units: 1 unit = 0.001 um (i.e., 1000 units = 1 um)
# For a small ALU, use 100um x 100um die
# make_tracks [get_layer EMCU_STD_VDD] -x_pitch 0.46 -y_pitch 0.46

initialize_floorplan \
  -die_area {0 0 200 200} \
  -core_area {5 5 195 195} \
  -site unithd

# Place I/O pins on boundary
place_pins -random

logMsg "Floorplan initialized"

# ── 5. Global Placement ──────────────────────────────────────────────────────
logMsg "=== Step 5: Global Placement ==="
global_place -density 0.40 -init_density_factor 0.5
logMsg "Global placement done"

# ── 6. Detail Placement ──────────────────────────────────────────────────────
logMsg "=== Step 6: Detail Placement ==="
detail_place
place_opt -dense
logMsg "Detail placement done"

# Write placement DEF
write_def $RES_DIR/ALU_place.def

# ── 7. Clock Tree Synthesis ──────────────────────────────────────────────────
# ALU is purely combinational; inject a zero-delay clock buffer chain instead
logMsg "=== Step 7: Clock Tree (combinational design — skipping) ==="

# ── 8. Routing ───────────────────────────────────────────────────────────────
logMsg "=== Step 8: Routing ==="

# Global route
global_route
logMsg "Global route done"

# Detail route
detail_route -output_directory $RES_DIR
logMsg "Detail route done"

# Write routed DEF
write_def $RES_DIR/ALU_route.def

# ── 9. Parasitic Extraction ───────────────────────────────────────────────────
logMsg "=== Step 9: RC Extraction ==="
extract_parasitics
logMsg "Extraction done"

# ── 10. STA ──────────────────────────────────────────────────────────────────
logMsg "=== Step 10: Static Timing Analysis ==="
read_sdc $SDC
report_checks -path_delay min_max > $REPORT_DIR/sta.rpt
logMsg "STA done"

# ── 11. Power Analysis ───────────────────────────────────────────────────────
logMsg "=== Step 11: Power Analysis ==="
report_power > $REPORT_DIR/power.rpt
logMsg "Power done"

# ── 12. DRC ─────────────────────────────────────────────────────────────────
logMsg "=== Step 12: DRC Check ==="
report_drc > $REPORT_DIR/drc.rpt
logMsg "DRC done"

# ── 13. Metrics Summary ─────────────────────────────────────────────────────
logMsg "=== Step 13: Metrics ==="
report_metrics > $REPORT_DIR/metrics.rpt

# ── 14. Final Netlist ───────────────────────────────────────────────────────
logMsg "=== Step 14: Writing Final Netlist ==="
write_verilog $RES_DIR/ALU_final.v
write_def $RES_DIR/ALU_final.def

logMsg "=== FLOW COMPLETE ==="
logMsg "Output files:"
logMsg "  DEF (place): $RES_DIR/ALU_place.def"
logMsg "  DEF (route): $RES_DIR/ALU_route.def"
logMsg "  Netlist:     $RES_DIR/ALU_final.v"
logMsg "  STA:         $REPORT_DIR/sta.rpt"
logMsg "  Power:       $REPORT_DIR/power.rpt"
logMsg "  DRC:         $REPORT_DIR/drc.rpt"
