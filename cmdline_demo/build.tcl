# read RTL sources
read_verilog -sv "test.sv"

# read constraints
read_xdc "Basys3_Master.xdc"

# synthesise design
synth_design -top "test" -part "xc7a35tcpg236-1"

# place and route
opt_design
place_design
route_design

# write bitstream
write_bitstream -force "top.bit"
