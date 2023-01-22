`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2023 02:11:03 PM
// Design Name: 
// Module Name: top
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


module top(
    input logic clk,
    input logic[15:0] sw,
    output logic[15:0] led,
    output logic[3:0] vga_red,
    output logic[3:0] vga_blue,
    output logic[3:0] vga_green,
    output logic vga_hsync,
    output logic vga_vsync
    );
    
    // 25.2 MHz Clock
    logic clk_25mhz;
    
    clk_wiz_0 (clk_25mhz, clk);
    
    // VGA counting unit
    logic[9:0] pos_x;
    logic[9:0] pos_y;
    logic hsync, vsync;
    logic de;
    
    vga_counter impl_vga_counter (
        clk_25mhz,
        pos_x,
        pos_y,
        hsync,
        vsync,
        de
    );
    
    // Image generator
    logic[3:0] red, green, blue;
    image_gen image_gen_impl(
        pos_x,
        pos_y,
        de,
        sw[11:0],
        red,
        green,
        blue
    );
    
    // Register each signal to avoid clock skew
    always_ff @(posedge clk_25mhz) begin
        vga_hsync <= hsync;
        vga_vsync <= vsync;
        if (de) begin
            vga_red     <= red;
            vga_green   <= green;
            vga_blue    <= blue;
        end else begin
            vga_red     <= 4'h0;
            vga_green   <= 4'h0;
            vga_blue    <= 4'h0;
        end
    end
    
endmodule
