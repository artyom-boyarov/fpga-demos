# read RTL sources
read_verilog -sv "src/top.sv"
read_verilog -sv "src/button_counter.sv"
read_verilog -sv "src/cathode_top.sv"
read_verilog -sv "src/seven_seg_controller.sv"

# read constraints
read_xdc "Basys3_Master.xdc"


