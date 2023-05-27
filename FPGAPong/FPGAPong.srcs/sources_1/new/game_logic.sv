`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2023 10:49:09 AM
// Design Name: 
// Module Name: game_logic
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


module game_logic(
    input logic clk,
    input logic rst,
    input logic btnL, btnR, btnD, btnU,
    input logic game_logic_activate,
    
    output logic[8:0] lpaddle_y,
    output logic[8:0] rpaddle_y,
    output logic[9:0] ball_x,
    output logic[9:0] ball_y,
    
    output logic[3:0] score_a,
    output logic[3:0] score_b
    );
    
    `include "parameters.sv"
    
    logic ball_x_dir, ball_x_dir_next; // 1 = right, 0 = left
    logic ball_y_dir, ball_y_dir_next; // 1 = up, 0 = down
    logic miss;
    logic[8:0] lpaddle_y_next;
    logic[8:0] rpaddle_y_next;
    logic[9:0] ball_x_next;
    logic[9:0] ball_y_next;
    logic[3:0] score_a_next;
    logic[3:0] score_b_next;
    
    always_ff @ (posedge clk)
        if (rst) begin
            ball_x <= 299; // 319 - BALL_LENGTH
            ball_y <= 219;
            lpaddle_y <= 189;
            rpaddle_y <= 189;
            ball_x_dir <= 0;
            ball_y_dir <= 0;
        end else begin
            ball_x <= ball_x_next;
            ball_y <= ball_y_next;
            ball_x_dir <= ball_x_dir_next;
            ball_y_dir <= ball_y_dir_next;
            lpaddle_y <= lpaddle_y_next;
            rpaddle_y <= rpaddle_y_next; 
        end
        
    always_comb begin
        ball_x_next = ball_x;
        ball_y_next = ball_y;
        ball_x_dir_next = ball_x_dir;
        ball_y_dir_next = ball_y_dir;
        lpaddle_y_next = lpaddle_y;
        rpaddle_y_next = rpaddle_y;
        score_a_next = score_a;
        score_b_next = score_b;
        
        if (game_logic_activate && score_a < 10 && score_b < 10) begin
            // Left paddle
            if (btnL && lpaddle_y > 0) lpaddle_y_next = lpaddle_y - 1;
            else if (btnD && lpaddle_y < (SCREEN_BOTTOM - PADDLE_HEIGHT) + 1) lpaddle_y_next = lpaddle_y + 1;
            
            // Right paddle
            if (btnU && rpaddle_y > 0) rpaddle_y_next = rpaddle_y - 1;
            else if (btnR && rpaddle_y < (SCREEN_BOTTOM - PADDLE_HEIGHT) + 1) rpaddle_y_next = rpaddle_y + 1;
            
            if (ball_x == 5 + PADDLE_WIDTH || ball_x == (SCREEN_RIGHT - BALL_LENGTH - 5 - PADDLE_WIDTH)) ball_x_dir_next = ball_x_dir ^ 1;
            if (ball_y == 0 || ball_y == (SCREEN_BOTTOM - BALL_LENGTH)) ball_y_dir_next = ball_y_dir ^ 1;
            
                ball_x_next = (ball_x_dir_next) ? ball_x + 2 : ball_x - 2; // 1 = right, 0 = left
                ball_y_next = (ball_y_dir_next) ? ball_y + 2 : ball_y - 2; // 1 = right, 0 = left
            
            // Missed hit logic
            miss = 0;
            if (ball_x == 5 + PADDLE_WIDTH) begin
                if (ball_y > lpaddle_y + BALL_LENGTH || ball_y < lpaddle_y + PADDLE_HEIGHT) begin // No collision
                    ball_x_next = 299;
                    ball_y_next = 219;
                    score_b_next = score_b + 1;
                end
            end
            else if (ball_x == (SCREEN_RIGHT - BALL_LENGTH - 5 - PADDLE_WIDTH)) begin
                if (ball_y > rpaddle_y + BALL_LENGTH || ball_y < rpaddle_y + PADDLE_HEIGHT) begin // No collision
                    ball_x_next = 299;
                    ball_y_next = 219;
                    score_a_next = score_a + 1;
                end
            end 
        end
    end
endmodule
