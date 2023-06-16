module dff(input logic D, output logic Q, input logic clk);
	initial Q = 1;
	always @(posedge clk) Q <= D;
endmodule