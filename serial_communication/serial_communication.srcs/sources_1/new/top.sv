`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 09:23:41 AM
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
        input logic[15:0] sw,
        output logic[15:0] led,
        input logic btnC, btnU, btnL, btnR, btnD,
        output logic RsTx,
        input logic RsRx
    );
    
    logic reset;
    
    initial_reset impl_initial_reset(
        .clk(clk), 
        .reset_out(reset)
    );
    
    logic tick;
    logic rx_synced;
    
    uart_transmitter impl_uart_tx (
        .clk(clk), 
        .reset(reset), 
        .uart_start(btnC), 
        .s_tick(tick), 
        .uart_tx(RsTx), 
        .data(sw[7:0])
    );
    
    baud_gen impl_baud_gen (
        .clk(clk), 
        .reset(reset), 
        .tick(tick)
    );
    
    synchroniser_2stage rx_synchroniser (
        .clk(clk),
        .in(RsRx),
        .out(rx_synced)
    );
    
    uart_receiver impl_uart_receiver (
        .clk(clk),
        .reset(reset),
        .s_tick(tick),
        .uart_rx(rx_synced),
        .dout(led[15:8])
    );
    
    assign led[7:0] = sw[7:0];
endmodule
