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
    
    assign led = sw;
    
    logic[19:0] seg_refresh_counter;
    logic[1:0] LED_activate_counter;
    
    logic[15:0] displayed_number = sw;
    /*
    BUTTON_COUNTER button_counter (
        clk,
        btnC, btnL, btnR, btnU, btnD,
        displayed_number
    ); */
    
    logic[3:0] LED_IN;
    
    BCD bcd(LED_IN, seg);
    
    assign LED_activate_counter = seg_refresh_counter[19:18];
    
    always_ff @(posedge clk)
        seg_refresh_counter <= seg_refresh_counter + 1;
    
    
    always_comb begin
        case(LED_activate_counter)
            2'b00: begin
                an = 4'b1110;
                LED_IN = displayed_number[3:0];
            end
            2'b01: begin
                an = 4'b1101;
                LED_IN = displayed_number[7:4];
            end
            2'b10: begin
                an = 4'b1011;
                LED_IN = displayed_number[11:8];
            end
            2'b11: begin
                an = 4'b0111;
                LED_IN = displayed_number[15:12];
            end
        endcase
    end
endmodule
