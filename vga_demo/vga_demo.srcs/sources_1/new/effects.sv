`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2023 05:46:10 PM
// Design Name: 
// Module Name: effects
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


module effects(
        input logic clk, reset,
        input logic[9:0] pos_x,
        input logic[9:0] pos_y,
        input logic de,
        input logic[2:0] choice,
        output logic[3:0] red,
        output logic[3:0] green,
        output logic[3:0] blue
    );

    logic[3:0] rb_red,rb_green,rb_blue;
    raster_bars raster_bars_impl (clk, reset, pos_x, pos_y, de, rb_red,rb_green,rb_blue); 

    always_comb
        case (choice)
            3'b001: begin
                red = rb_red; green = rb_green; blue = rb_blue;
            end
            default: begin
                red = 4'hF; green = 4'h0; blue = 4'hF;
            end
        endcase

endmodule
