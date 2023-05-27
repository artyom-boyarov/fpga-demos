# synthesise design
synth_design -top "pwm_top" -part "xc7a35tcpg236-1"

# place and route
opt_design
place_design
route_design

# write bitstream
write_bitstream -force "output/top.bit"
