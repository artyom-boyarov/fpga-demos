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
    input logic btnC,
    output logic[15:0] led,
    output logic[3:0] vga_red,
    output logic[3:0] vga_blue,
    output logic[3:0] vga_green,
    output logic vga_hsync,
    output logic vga_vsync
    );
    
    // 25.2 MHz Clock
    logic clk_25mhz;
    
    clk_wiz_0 clk_wiz(clk_25mhz, clk);
    
    // VGA counting unit
    logic[9:0] pos_x;
    logic[9:0] pos_y;
    logic[18:0] mem_idx;
    logic hsync_s1, hsync_s2, vsync_s1, vsync_s2;
    logic de_s1, de_s2;
    
    vga_counter impl_vga_counter (
        clk_25mhz,
        btnC,
        pos_x,
        pos_y,
        hsync_s1,
        vsync_s1,
        de_s1,
	    mem_idx
    );
    
    // Image generator
	// Make use of 1 pipeline register - BRAM only needs latency of 1 and the output is registered
    logic[3:0] red, green, blue;
    /*
    image_gen image_gen_impl(
        clk_25mhz,
        btnC,
        pos_x,
        pos_y,
        de_s1,
        mem_idx,
        red,
        green,
        blue
    );*/
    effects effects_impl (
        .clk(clk_25mhz),
        .reset(btnC),
        .pos_x(pos_x),
        .pos_y(pos_y),
        .de(de_s1),
        .choice(sw[2:0]),
        .red(red),
        .green(green),
        .blue(blue) 
    );
    
    // Register each signal to avoid clock skew
    always_ff @(posedge clk_25mhz) begin
    
        hsync_s2 <= hsync_s1;
        vsync_s2 <= vsync_s1;
        de_s2 <= de_s1;
    
        vga_hsync <= hsync_s2;
        vga_vsync <= vsync_s2;
        if (de_s2) begin
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
