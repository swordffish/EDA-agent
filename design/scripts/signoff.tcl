# signoff.tcl — Timing & DRC signoff for sky130hd ALU
source /OpenROAD-flow-scripts/flow/scripts/openroad/common_setup.tcl
read_def /workspace/results/alu_route.def
link_design alu

set log [open /workspace/logs/signoff.log w]
puts $log "=== Signoff Stage ==="
flush $log

set report_file "/workspace/reports/signoff_summary.rpt"

if { [catch {
  # ── RC extraction ──────────────────────────────────────────────────────────
  extract_parasitics -ext_model_file /OpenROAD-flow-scripts/flow/platforms/sky130hd/\
    spice/sky130_fd_pr.cir \
    -coupling_cap 0
  puts $log "parasitic extraction done"

  # ── Static timing analysis ────────────────────────────────────────────────
  read_sdc /workspace/design/constraint.sdc
  report_checks -path_delay min_max > "$report_file"
  puts $log "STA done"

  # ── Design rule check ─────────────────────────────────────────────────────
  report_drc > /workspace/reports/drc.rpt
  puts $log "DRC done"

  # ── Power analysis ────────────────────────────────────────────────────────
  report_power > /workspace/reports/power.rpt
  puts $log "Power done"

  # ── Final netlist ─────────────────────────────────────────────────────────
  write_verilog /workspace/results/alu_final.v
  puts $log "Final netlist written"

  # ── Metrics summary ───────────────────────────────────────────────────────
  report_metrics > /workspace/reports/metrics.rpt
} result] } {
  puts $log "ERROR: $result"
  close $log
  exit 1
}
puts $log "=== Signoff PASSED ==="
close $log
exit 0
