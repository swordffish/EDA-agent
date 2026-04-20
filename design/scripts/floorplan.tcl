# floorplan.tcl — Die area, core area, and I/O placement for sky130hd
source /OpenROAD-flow-scripts/flow/scripts/openroad/common_setup.tcl
source /OpenROAD-flow-scripts/flow/scripts/openroad/floorplan.tcl

set log [open /workspace/logs/floorplan.log w]
puts $log "=== Floorplan Stage ==="
flush $log

if { [catch {
  floorplan -die_area_box {0 0 100 100}
  puts $log "[exec date]"
} result] } {
  puts $log "ERROR: $result"
  close $log
  exit 1
}
puts $log "=== Floorplan PASSED ==="
close $log
exit 0
