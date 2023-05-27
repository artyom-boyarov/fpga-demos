`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/11/2023 05:50:24 PM
// Design Name: 
// Module Name: raster_bars
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


module raster_bars(
        input logic clk, reset,
        input logic[9:0] pos_x,
        input logic[9:0] pos_y,
        input logic de,
        output logic[3:0] red,
        output logic[3:0] green,
        output logic[3:0] blue
    );
    localparam V_RES_FULL = 525;
    localparam H_RES      = 640;
    
    localparam START_COLOUR = 12'h126;
    localparam COLOUR_NUM    = 10;
    localparam LINE_NUM     =  2;
    
    logic[11:0] bar_colour;
    logic bar_inc;
    logic[$clog2(COLOUR_NUM):0] cnt_colour;
    logic[$clog2(LINE_NUM):0] cnt_line;
    
    always_ff @(posedge clk) begin
        if (pos_x == H_RES) begin
            if (pos_y == V_RES_FULL-1) begin
                bar_colour  <= START_COLOUR;
                bar_inc     <= 1;
                cnt_colour   <= 0;
                cnt_line    <= 0;
            end else if (cnt_line == LINE_NUM-1) begin
                cnt_line <= 0;
                if (cnt_colour == COLOUR_NUM-1) begin
                    bar_inc <= ~bar_inc;
                    cnt_colour <= 0;
                end else begin
                    bar_colour <= (bar_inc) ? bar_colour + 12'h111 : bar_colour - 12'h111;
                    cnt_colour <= cnt_colour + 1;
                end
            end else cnt_line <= cnt_line + 1;
        end
    end
    
    always_comb {red, green, blue} = bar_colour;
endmodule
