`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2023 05:44:07 PM
// Design Name: 
// Module Name: image_gen
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


module image_gen(
        input logic[9:0] pos_x,
        input logic[9:0] pos_y,
        input logic de,
        input logic[11:0] colour_number,
        output logic[3:0] red,
        output logic[3:0] green,
        output logic[3:0] blue
    );
    
    logic square;
    always_comb begin
        square  = (pos_x > 220 && pos_x < 420) && (pos_y > 140 && pos_y < 340);
        
        red     = (square) ? 4'hF : colour_number[3:0];
        green   = (square) ? 4'hF : colour_number[7:4];
        blue    = (square) ? 4'hF : colour_number[11:8];
    end
endmodule
