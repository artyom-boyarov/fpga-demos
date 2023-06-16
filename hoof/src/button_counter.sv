module button_counter 
	#
	(
		parameter MODE 			= "HEX", // or "DEC"
		parameter NUM_SEGMENTS 	= 4,
		parameter CLK_PER		= 10,
		parameter REFR_RATE		= 1000
	)
	(
		input logic clk,
		input logic BTNC,
		input logic rst,
		output logic[NUM_SEGMENTS-1:0] anode,
		output logic[6:0] cathode
	);
	
	logic[NUM_SEGMENTS-1:0][3:0] encoded;
	
	seven_seg_controller
		#
		(
			.NUM_SEGMENTS	(NUM_SEGMENTS),
			.CLK_PER		(CLK_PER),
			.REFR_RATE		(REFR_RATE)
		)
	impl_seven_seg_controller
		(
			.clk	(clk),
			.encoded(encoded),
			.anode	(anode),
			.cathode(cathode)
		);
	
	
	logic 		last_button;
	logic 		button;
	logic 		button_down;
	logic[2:0] 	button_sync;
	
	logic 		counter_en;
	logic[7:0] 	counter;
	
	initial begin
		last_button = '0;
		button = '0;
		button_down = '0;
		encoded = '0;
	end
	
	always @(posedge clk) begin
		button_down <= '0;
		button_sync <= button_sync << 1 | BTNC;
		if (button_sync[2:1] == 2'b01) 	counter_en <= '1;
		else if (~button_sync[1])		counter_en <= '0;
		if (counter_en) begin
			counter <= counter + 1'b1;
			if (&counter) begin
				counter_en 	<= '0;
				counter 	<= '0;
				button_down	<= '1;
			end
		end
	end
	
	always @(posedge clk) begin
		if (button_down) encoded <= (MODE == "HEX") ? encoded + 1'b1 : dec_inc(encoded);
		if (~rst) encoded <= '0;
	end
	
	function [NUM_SEGMENTS-1:0][3:0] dec_inc;
		input [NUM_SEGMENTS-1:0][3:0] din;
	endfunction
endmodule