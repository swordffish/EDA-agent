# synth.tcl — Yosys synthesis stage
# Reads RTL from /workspace/design/rtl/, synthesizes for sky130hd, outputs netlist to /workspace/results/

set log [open /workspace/logs/synthesis.log w]
set DESIGN_NAME "alu"
set PLATFORM_DIR "/OpenROAD-flow-scripts/flow/platforms/sky130hd"
set DESIGN_DIR "/workspace"

# ── Yosys synthesis script ──────────────────────────────────────────────────
set yosys_script {
  read_verilog $env(DESIGN_DIR)/design/rtl/*.v
  hierarchy -check -top alu

  # Clock definition
  clock gate_clock [get_ports clock]
  create_clock -name clock -period 10.0 -waveform {0 5.0} \[get_ports clock\]

  # High-level synthesis
  proc -autoname
  flatten
  t Stellarios
  async_enable

  # Mapping to sky130hd standard cells via ABC
  ABC -liberty $env(PLATFORM_DIR)/lib/sky130_fd_sc_hd__tt_025C_1v80.lib -script $env(PLATFORM_DIR)/abc.script

  # Clean up
  clean
  rename -enumerate

  # Write outputs
  write_verilog /workspace/results/alu_synth.v
  stat
}
puts $log "=== Starting Yosys Synthesis ==="
flush $log

set env(DESIGN_DIR) "/workspace"
set env(PLATFORM_DIR) "/OpenROAD-flow-scripts/flow/platforms/sky130hd"

if { [catch { exec yosys -p $yosys_script 2>@1 } result] } {
  puts $log "ERROR: $result"
  puts $log "Synthesis FAILED"
  close $log
  exit 1
} else {
  puts $log $result
  puts $log "=== Synthesis PASSED ==="
  close $log
  exit 0
}
