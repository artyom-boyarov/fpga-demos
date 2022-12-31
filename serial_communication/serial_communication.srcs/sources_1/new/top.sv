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


module top(
    input logic clk,
    input logic[15:0] sw,
    output logic[15:0] led,
    input logic btnC, btnU, btnL, btnR, btnD,
    output logic RsTx,
    input logic RsRx
    );
    
    logic reset;
    logic reset_hit;
    
    always_ff @(posedge clk) begin
        case (reset_hit)
            1'b1: begin
                reset <= 0;
                reset_hit <= 1;
            end
            1'b0: begin
                reset <= 1;
                reset_hit <= 1;
            end
            default: begin
                reset <= 1;
                reset_hit <= 1;
            end
        endcase  
    end
    
    logic tick;
    
    uart impl_uart(clk, reset, btnC, tick, RsTx, sw[7:0]);
    baud_gen impl_baud_gen(clk, reset, tick);
    
    assign led[7:0] = sw[7:0];
/*
    typedef enum logic {BUTTON_DEPRESSED, BUTTON_PRESSED} statetype;
    statetype current_state, next_state;
    logic uart_next;
    logic uart_state;

    always_ff @(posedge clk)
    begin
        current_state <= next_state;
        uart_state <= uart_next;
    end

    always_comb
        case(current_state)
            BUTTON_DEPRESSED:
                if(btnC)  begin
                    next_state = BUTTON_PRESSED;   uart_next = 1;
                end
                else begin
                    next_state = BUTTON_DEPRESSED; uart_next = 0;
                end
            BUTTON_PRESSED:
                if (btnC) begin
                    next_state = BUTTON_PRESSED;   uart_next = 0;
                end
                else begin
                    next_state = BUTTON_DEPRESSED; uart_next = 0;
                end
            default:
            begin
                next_state = BUTTON_DEPRESSED;
            end
        endcase
    assign led = {15'b0, uart_state};
    */
endmodule
