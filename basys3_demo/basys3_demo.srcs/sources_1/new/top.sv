`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2022 08:26:50 AM
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
    // Buttons
    input logic btnC, btnL, btnR, btnU, btnD,
    // 7-segment display
    output logic[6:0] seg,
    output logic[3:0] an,
    output logic dp
    );    

    logic[15:0] displayed_number;

    BUTTON_COUNTER button_counter (
        clk,
        btnC, btnL, btnR, btnU, btnD,
        displayed_number
    );
    
    SEVEN_SEG_CONTROLLER seven_seg_controller (
        clk,
        displayed_number,
        seg,
        an
    );

    assign led = displayed_number;

endmodule
