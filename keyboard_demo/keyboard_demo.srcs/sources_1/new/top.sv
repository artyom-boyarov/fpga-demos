`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2023 03:53:45 PM
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
    // 7-segment display
    output logic[6:0] seg,
    output logic dp,
    output logic[3:0] an,

    // UART transmitter    
    output logic tx,
    
    // PS/2 keyboard
    input logic PS2Clk,
    input logic PS2Data
    );
    
    logic[15:0] keycode;
    
    SEVEN_SEG_CONTROLLER seven_seg_impl(clk, keycode, seg, an);
    PS2Receiver ps2_receiver_impl(clk, PS2Clk, PS2Data, keycode, finished);
    
endmodule
