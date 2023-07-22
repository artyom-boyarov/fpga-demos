`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2023 04:48:00 PM
// Design Name: 
// Module Name: synchroniser_2stage
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module synchroniser_2stage(
    input logic clk,
    input logic in,
    output logic out
    );
    
    logic intermediate_stage;
    
    always_ff @(posedge clk) begin
        intermediate_stage <= in;
        out <= intermediate_stage;    
    end
    
endmodule
