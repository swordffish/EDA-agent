# cts.tcl — Clock tree synthesis for sky130hd ALU
source /OpenROAD-flow-scripts/flow/scripts/openroad/common_setup.tcl
read_def /workspace/results/alu_place.def
link_design alu

set log [open /workspace/logs/cts.log w]
puts $log "=== CTS Stage ==="
flush $log

if { [catch {
  clock_tree_synthesis \
    -root_buf sky130_fd_sc_hd__buf_4 \
    -leaf_buf sky130_fd_sc_hd__buf_4 \
    -max_cap 0.2 \
    -max_fanout 16
  puts $log "clock_tree_synthesis done"

  estimate_parasitics -cta
  puts $log "CTS PASSED"
} result] } {
  puts $log "ERROR: $result"
  close $log
  exit 1
}
close $log
write_def /workspace/results/alu_cts.def
exit 0
