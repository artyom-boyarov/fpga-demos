`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2023 02:59:04 PM
// Design Name: 
// Module Name: sim_vga_top
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


module sim_vga_top(
    output logic[15:0] led,
    output logic[3:0] vga_red,
    output logic[3:0] vga_blue,
    output logic[3:0] vga_green,
    output logic vga_hsync,
    output logic vga_vsync
    );
    
    logic clk, reset;
    logic[15:0] sw;
    
    top top_inst (
        clk, sw, reset, led, vga_red, vga_blue, vga_green, vga_hsync, vga_vsync
    );
    
    initial begin
        sw = 16'b0;
        reset = 1;
        clk = 1;
        #1;
        clk = 0;
        #1;
        reset = 0;
        repeat (420100) begin
            clk = 1;
            #1;
            clk = 0;
            #1;
        end
    end
endmodule
