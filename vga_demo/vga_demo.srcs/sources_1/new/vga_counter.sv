`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2023 04:06:30 PM
// Design Name: 
// Module Name: vga_counter
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


module vga_counter(
    input logic clk_pix,
    output logic[9:0] pos_x,
    output logic[9:0] pos_y,
    output logic hsync,
    output logic vsync,
    output logic de
    );
    
    // Horizontal timings
    parameter HA_END = 639;
    parameter HS_STA = HA_END + 16;
    parameter HS_END = HS_STA + 96;
    parameter LINE = 799;
    
    // Vertical timings
    parameter VA_END = 479;
    parameter VS_STA = VA_END + 10;
    parameter VS_END = VS_STA + 2;
    parameter SCREEN = 524;
    
    always_comb begin
        hsync = ~(pos_x >= HS_STA && pos_x < HS_END);
        vsync = ~(pos_y >= VS_STA && pos_y < VS_END);
        de = (pos_x <= HA_END && pos_y <= VA_END);
    end
    
    always_ff @(posedge clk_pix)
    begin
        if (pos_x == LINE) begin
            pos_x <= 0;
            pos_y <= (pos_y == SCREEN) ? 0 : pos_y + 1;
        end else begin
            pos_x <= pos_x + 1;
        end
    end
    
    
endmodule
