# Timing constraints for OpenROAD — sky130hd
# Clock definition
create_clock [get_ports clock] -period 10.0 -name clock

# Input delays (relative to clock port)
set_input_delay -clock clock 1.0 [all_inputs]

# Output delays (relative to clock port)
set_output_delay -clock clock 1.0 [all_outputs]

# Clock uncertainty / jitter budget
set_clock_uncertainty 0.5 [get_clocks clock]
