set_property SRC_FILE_INFO {cfile:c:/Users/artyo/Desktop/Vivado/vga_demo/vga_demo.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc rfile:../../../vga_demo.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc id:1 order:EARLY used_in_board:yes scoped_inst:inst prop_thru_buffer:yes} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/artyo/Desktop/Vivado/vga_demo/vga_demo.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc rfile:../../../vga_demo.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc id:2 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {reset} [get_ports reset]
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
