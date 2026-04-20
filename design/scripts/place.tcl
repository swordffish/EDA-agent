# place.tcl — Global placement + detail placement for sky130hd ALU
source /OpenROAD-flow-scripts/flow/scripts/openroad/common_setup.tcl
read_verilog /workspace/results/alu_synth.v
link_design alu

set log [open /workspace/logs/placement.log w]
puts $log "=== Placement Stage ==="
flush $log

if { [catch {
  # I/O placement
  source /OpenROAD-flow-scripts/flow/scripts/openroad/io_placement.tcl

  # Global placement
  global_place -density 0.40
  puts $log "global_place done"

  # Antenna check
  estimate_parasitics -placement

  # Detailed placement
  detail_place
  place_opt -dense
  puts $log "detail_place done"

  # Write outputs
  write_def /workspace/results/alu_place.def
  puts $log "DEF written to /workspace/results/alu_place.def"
} result] } {
  puts $log "ERROR: $result"
  close $log
  exit 1
}
puts $log "=== Placement PASSED ==="
close $log
exit 0
