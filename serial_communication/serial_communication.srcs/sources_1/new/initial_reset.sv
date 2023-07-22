`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2023 01:10:17 PM
// Design Name: 
// Module Name: initial_reset
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


module initial_reset(
        input logic clk,
        output logic reset_out
    );
    logic reset_hit;
    
    always_ff @(posedge clk) begin
        case (reset_hit)
            1'b1: begin
                reset_out <= 0;
                reset_hit <= 1;
            end
            1'b0: begin
                reset_out <= 1;
                reset_hit <= 1;
            end
            default: begin
                reset_out <= 1;
                reset_hit <= 1;
            end
        endcase  
    end
    
endmodule
