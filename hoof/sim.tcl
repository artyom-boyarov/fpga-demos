
read_verilog -sv "src/pwm.sv"
read_verilog -sv "testbench/tb_pwm.sv"

save_project_as sim -force
set_property top tb_pwm [get_fileset sim_1]
launch_simulation -simset sim_1 -mode behavioral
run 5us
