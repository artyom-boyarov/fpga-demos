`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 10:58:31 AM
// Design Name: 
// Module Name: uart
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


module uart_transmitter
    #(parameter DBIT=8,
                SB_TICK = 8)
(
        input logic clk, reset, uart_start, s_tick,
        output logic uart_tx,
        input logic[7:0] data/*,
        output logic[1:0] uart_state_out,
        output logic[2:0] data_counter_out,
        output logic[9:0] counter_out,,*/
    );



    typedef enum logic[1:0] {UART_IDLE, UART_START, UART_DATA, UART_STOP} statetype;
    statetype state_reg, state_reg_next;
    logic[3:0] sample_reg, sample_reg_next;
    logic[2:0] n_reg, n_reg_next;
    logic[7:0] data_reg, data_reg_next;
    logic tx_reg, tx_reg_next;
    

    always_ff @(posedge clk)
        if (reset) begin
            state_reg   <= UART_IDLE;
            sample_reg  <= 0;
            n_reg       <= 0;
            data_reg    <= 0;
            tx_reg      <= 1'b1;
        end
        else begin
            state_reg   <= state_reg_next;
            sample_reg  <= sample_reg_next;
            n_reg       <= n_reg_next;
            data_reg    <= data_reg_next;
            tx_reg      <= tx_reg_next;
        end
        
        
    always_comb begin
        state_reg_next  = state_reg;
        sample_reg_next = sample_reg;
        n_reg_next      = n_reg;
        data_reg_next   = data_reg;
        tx_reg_next     = tx_reg;
    
        case(state_reg)
        
            UART_IDLE: begin
                tx_reg_next = 1'b1;
                
                if (uart_start) begin 
                    state_reg_next  = UART_START;
                    sample_reg_next = 0;
                    data_reg_next   = data;
                end
            end
            
            UART_START: begin
                tx_reg_next = 1'b0;
                if (s_tick)
                    if (sample_reg == 7) begin
                        state_reg_next = UART_DATA;
                        sample_reg_next = 0;
                        n_reg_next = 0;
                    end
                    else
                        sample_reg_next = sample_reg + 1;
            end
            
            UART_DATA: begin
                tx_reg_next = data_reg[0];
                if (s_tick)
                    if (sample_reg == 7) begin
                        sample_reg_next = 0;
                        data_reg_next = data_reg >> 1;
                        if (n_reg == (DBIT-1))
                            state_reg_next = UART_STOP;
                        else
                            n_reg_next = n_reg + 1;
                    end
                    else
                        sample_reg_next = sample_reg + 1;
            end
            
            UART_STOP: begin
                tx_reg_next = 1'b1;
                if (s_tick)
                    if (sample_reg == (SB_TICK-1))
                        state_reg_next = UART_IDLE;
                    else
                        sample_reg_next = sample_reg + 1;
            end
            default: begin			
				state_reg_next  = UART_IDLE;
				sample_reg_next = 0;
				n_reg_next      = 0;
				data_reg_next   = 0;
				tx_reg_next     = 1'b1;
            end
        endcase
        // Make count == 867 in real test
        
    end
    assign uart_tx = tx_reg;
    assign uart_state_out = state_reg;
endmodule
