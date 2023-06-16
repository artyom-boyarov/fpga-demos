`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2023 09:22:44 AM
// Design Name: 
// Module Name: button_counter
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


module button_counter
    #(parameter MODE="HEX") // or "DEC" for decimal
    (
        input logic clk,
        input logic button,
        output logic[15:0] count
    );
    
    logic button_pressed;
    logic button_pressed_next;
    logic count_next;
    
    always_ff @(posedge clk) begin
        if (button)
            count <= (MODE == "HEX") ? count + 1 : dec_inc(count);
    end
    
    function logic[15:0] dec_inc (logic[15:0] number);
        if (number[3:0] < 9)
            dec_inc = number + 1;
        else begin
            number[3:0] = 0;
            if (number[7:4] < 9)
                dec_inc = number + 5'h10;
            else begin
                number[7:4] = 0;
                if (number[11:8] < 9)
                    dec_inc = number + 9'h100;
                else begin
                    number[11:8] = 0;
                    if (number[15:12] < 9)
                        dec_inc = number + 13'h1000;
                    else dec_inc = '0;
                end
            end
        end
    endfunction

endmodule
