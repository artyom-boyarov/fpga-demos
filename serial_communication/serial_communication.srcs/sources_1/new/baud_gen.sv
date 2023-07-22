`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2022 01:22:49 PM
// Design Name: 
// Module Name: baud_gen
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


module baud_gen
    #(parameter DVSR=216) // V = (F/(8*B)) - 1. 8 samples are taken for 57600 baud rate
    (
        input logic clk, reset,
        output logic tick
    );
    
    logic[10:0] counter;
    logic[10:0] counter_next;
    
    always_ff @(posedge clk)
        counter <= counter_next;
    
    assign counter_next = (counter == DVSR) ? 0 : counter + 1;
    assign tick = (counter == 1);
endmodule
