`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2023 08:21:55 AM
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


module top
    (
        input logic clk,
        input logic btnC,
        input logic btnU,
        
        output logic[15:0] led,
        output logic[6:0] seg,
        output logic[3:0] an
    );
    
    logic rst;
    assign rst = btnU;
    
    logic[15:0] displayed_number;
    assign led = displayed_number;
    
    seven_seg_controller impl_seven_seg_controller (
        .clk(clk),
        .displayed_number(displayed_number),
        .seg(seg),
        .an(an)
    );
    
    logic button_down;
    
    button_press_detector impl_button_press_detector (
        .clk(clk),
        .button_in(btnC),
        .button_down(button_down)
    );
    
    button_counter #(.MODE("DEC")) impl_button_counter (
        .clk(clk),
        .button(button_down),
        .count(displayed_number)
    );
    
endmodule
