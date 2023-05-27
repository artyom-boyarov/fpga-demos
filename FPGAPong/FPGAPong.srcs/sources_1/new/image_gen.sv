`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 01:19:08 PM
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
        input logic clk, rst,
        input logic[9:0] pos_x,
        input logic[9:0] pos_y,
        input logic[8:0] lpaddle_y,
        input logic[8:0] rpaddle_y,
        input logic[9:0] ball_x,
        input logic[9:0] ball_y,
        input logic de,
        output logic[3:0] red,
        output logic[3:0] green,
        output logic[3:0] blue
    );
    
    `include "parameters.sv"
    
    logic draw_lpaddle, draw_rpaddle, draw_ball, draw_white;
    
    always_comb begin
        draw_lpaddle = (pos_x >= 5 && pos_x <= 5 + PADDLE_WIDTH && pos_y >= lpaddle_y && pos_y <= lpaddle_y + PADDLE_HEIGHT);
        draw_rpaddle = (pos_x >= SCREEN_RIGHT - 5 - PADDLE_WIDTH && pos_x <= SCREEN_RIGHT - 5 && pos_y >= rpaddle_y && pos_y <= rpaddle_y + PADDLE_HEIGHT);
        draw_ball = (pos_x >= ball_x && pos_x <= ball_x + BALL_LENGTH && pos_y >= ball_y && pos_y <= ball_y + BALL_LENGTH);
        
        draw_white = draw_lpaddle | draw_rpaddle | draw_ball;
        
        if (de) begin
            red     = (draw_white) ? 4'hF : 4'h1;
            green   = (draw_white) ? 4'hF : 4'h3;
            blue    = (draw_white) ? 4'hF : 4'h7;
        end else begin
            red = 4'h0;
            green = 4'h0;
            blue = 4'h0;
        end
    end

endmodule
