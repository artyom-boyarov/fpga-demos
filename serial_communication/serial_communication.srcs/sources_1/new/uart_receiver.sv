`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2023 04:47:12 PM
// Design Name: 
// Module Name: uart_receiver
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


module uart_receiver
    #(
        parameter DBIT=8,
        parameter SB_TICK=16
    )
    (
        input logic clk,
        input logic reset,
        input logic s_tick,
        input logic uart_rx,
        output logic[7:0] dout,
        output logic data_received
    );
    
    typedef enum {IDLE, START, DATA, STOP} state_t;
    
    state_t state_reg, state_next;
    logic[3:0] s_reg, s_next;
    logic[2:0] n_reg, n_next;
    logic[7:0] b_reg, b_next;
    logic data_received_next;
    
    always_ff @(posedge clk)
        if (reset) begin
            state_reg <= IDLE;
            s_reg <= 0;
            n_reg <= 0;
            b_reg <= 0;
            data_received <= 0;
        end else begin
            state_reg <= state_next;
            s_reg <= s_next;
            n_reg <= n_next;
            b_reg <= b_next;
            data_received <= data_received_next;
        end
    
    always_comb begin
        state_next = state_reg;
        s_next = s_reg;
        n_next = n_reg;
        b_next = b_reg;
        data_received_next = data_received;
        
        case (state_reg)
            IDLE:
                if (~uart_rx) begin
                    state_next = START;
                    s_next = 0;
                end
            START:
                if (s_tick)
                    if (s_reg == 3) begin
                        state_next = DATA;
                        s_next = 0;
                        n_next = 0;
                    end else
                        s_next = s_reg + 1;
            DATA:
                if (s_tick)
                    if (s_reg == 7) begin
                        s_next = 0;
                        b_next = {uart_rx, b_reg[7:1]};
                        if (n_reg == (DBIT-1)) begin
                            state_next = STOP;
                            data_received_next = '1;
                        end
                        else
                            n_next = n_reg + 1;
                    end else 
                        s_next = s_reg + 1;
            STOP: begin
                data_received_next = '0;
                if (s_tick) 
                    if (s_reg == (SB_TICK-1)) state_next = IDLE;
                    else s_next = s_reg + 1;
            end
        endcase
    end
    
    assign dout = b_reg;
endmodule
