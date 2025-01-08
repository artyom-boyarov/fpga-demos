`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 09:20:10
// Design Name: 
// Module Name: two_stage_sync
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//  Two-stage synchroniser. Asserts out for 1 cycle after the input turns high.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module two_stage_sync(
        input logic in,
        output logic out,
        input logic clk
    );
    
    logic [3:0] sync_reg;
    
    always @(posedge clk) begin
        sync_reg <= {sync_reg[2:0], in};
    end
    
    initial begin
        sync_reg = 0;
    end
    
    assign out = ~sync_reg[3] & sync_reg[2];
endmodule
