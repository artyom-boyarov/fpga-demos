module seven_seg_controller
	#
	(
		parameter NUM_SEGMENTS	=	 4,
		parameter CLK_PER		=	10,// Clock period in ns
		parameter REFR_RATE		= 1000 // Refresh rate in Hz
	)
	(
		input logic clk,
		input logic[NUM_SEGMENTS-1:0][3:0] encoded,
		output logic[6:0] cathode,
		output logic[NUM_SEGMENTS-1:0] anode
    );
	
	localparam INTERVAL = int'(1000000000  / (CLK_PER * REFR_RATE));
	
	logic[$clog2(INTERVAL)-1:0] 	refresh_count;
	logic[$clog2(NUM_SEGMENTS)-1:0] anode_count;
	logic[NUM_SEGMENTS-1:0][6:0]	segments;
    
    cathode_top impl_cathode_top[NUM_SEGMENTS] 
	(
		.clk	(clk),
		.encoded(encoded),
		.cathode(segments)
	);
	
	initial begin
		refresh_count 	= '0;
		anode_count 	= '0;
	end
	
	always @(posedge clk) begin
		if (refresh_count == INTERVAL) begin
			refresh_count <= '0;
			anode_count <= anode_count + 1'b1;
		end else refresh_count <= refresh_count + 1'b1;
		anode 				<= '1;
		anode[anode_count] 	<= '0;
		cathode 			<= segments[anode_count];
	end
endmodule