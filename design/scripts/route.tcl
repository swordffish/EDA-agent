# route.tcl — Global routing + detail routing for sky130hd ALU
source /OpenROAD-flow-scripts/flow/scripts/openroad/common_setup.tcl
read_def /workspace/results/alu_cts.def
link_design alu

set log [open /workspace/logs/routing.log w]
puts $log "=== Routing Stage ==="
flush $log

if { [catch {
  estimate_parasitics -cta

  # Global route
  global_route -guides_file /workspace/results/alu.global_route.guide
  puts $log "global_route done"

  # Detail route
  detail_route -output_guide /workspace/results/alu.route.guide \
               -output_drc /workspace/results/alu.drc.rpt
  puts $log "detail_route done"

  estimate_parasitics -rct
  write_def /workspace/results/alu_route.def
  puts $log "DEF written"
} result] } {
  puts $log "ERROR: $result"
  close $log
  exit 1
}
puts $log "=== Routing PASSED ==="
close $log
exit 0
