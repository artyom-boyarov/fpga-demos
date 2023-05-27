`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 10:29:35 AM
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
    input logic btnL, btnR, btnC, btnU, btnD,
    
    output logic[3:0] vgaRed,
    output logic[3:0] vgaBlue,
    output logic[3:0] vgaGreen,
    output logic vgaHsync,
    output logic vgaVsync,
    
    output logic[6:0] seg,
    output logic[3:0] an,
    output logic dp
    );
    
    logic rst;
    assign rst = btnC;
    
    assign dp = 1'b1;
    
    logic clk_25mhz;
    clk_wiz_0 impl_clk (clk_25mhz, rst, clk);
    
    
    logic[9:0] pos_x;
    logic[9:0] pos_y;
    logic hsync;
    logic vsync;
    logic de;
    logic game_logic_activate;
    
    vga_counter impl_vga_counter (
        clk_25mhz,
        rst,
        pos_x,
        pos_y,
        hsync,
        vsync,
        de,
        game_logic_activate        
    );
    
    logic[8:0] lpaddle_y;
    logic[8:0] rpaddle_y;
    logic[9:0] ball_x;
    logic[9:0] ball_y;
    logic[3:0] score_a;
    logic[3:0] score_b;
    
    game_logic impl_game_logic (
        clk_25mhz,
        rst,
        btnL,
        btnR,
        btnD,
        btnU,
        game_logic_activate,
        lpaddle_y,
        rpaddle_y,
        ball_x,
        ball_y,
        score_a,
        score_b
    );
    
    seven_seg_display seven_seg_impl (
        clk,
        {4'b0, score_a, 4'b0, score_b},
        seg,
        an
    );
    
    logic[3:0] red;
    logic[3:0] green;
    logic[3:0] blue;
    
    
    image_gen image_gen_impl (
        clk_25mhz,
        rst,
        pos_x,
        pos_y,
        lpaddle_y,
        rpaddle_y,
        ball_x,
        ball_y,
        de,
        red,
        green,
        blue
    );
    
    always_ff @(posedge clk_25mhz) begin
        vgaRed <= red;
        vgaGreen <= green;
        vgaBlue <= blue;
        vgaHsync <= hsync;
        vgaVsync <= vsync;
    end
    
endmodule
