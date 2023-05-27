module button_counter_top
	(
		input logic clk,
		input logic btnC,
		input logic btnU,
		output logic[3:0] an,
		output logic[6:0] cathode
	);
	button_counter impl_button_counter (
		.clk(clk),
		.BTNC(btnC),
		.rst(btnU),
		.anode(an),
		.cathode(cathode)
	);
endmodule