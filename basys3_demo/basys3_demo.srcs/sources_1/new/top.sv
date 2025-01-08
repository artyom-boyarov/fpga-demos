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
    
    logic btnCSynced, btnUSynced, btnDSynced, btnLSynced, btnRSynced;

    BUTTON_COUNTER button_counter (
        clk,
        btnCSynced,
        btnLSynced, 
        btnRSynced, 
        btnUSynced,
        btnDSynced,
        displayed_number
    );
    
    SEVEN_SEG_CONTROLLER seven_seg_controller (
        clk,
        displayed_number,
        seg,
        an
    );
    
    two_stage_sync btnC_sync (
        btnC,
        btnCSynced,
        clk
    );
    
    two_stage_sync btnU_sync (
        btnU,
        btnUSynced,
        clk
    );
    
    two_stage_sync btnD_sync (
        btnD,
        btnDSynced,
        clk
    );
    
    two_stage_sync btnL_sync (
        btnL,
        btnLSynced,
        clk
    );
    
    two_stage_sync btnR_sync (
        btnR,
        btnRSynced,
        clk
    );

    assign led = displayed_number;

endmodule
