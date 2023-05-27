# read RTL sources
read_verilog -sv "src/top.sv"
read_verilog -sv "src/pwm.sv"

# read constraints
read_xdc "Basys3_Master.xdc"


