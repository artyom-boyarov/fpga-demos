`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2023 09:30:43 AM
// Design Name: 
// Module Name: calculator_mealy
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


module calculator_mealy #(parameter BITS=32) (
        input logic clk,
        input logic start,
        input logic[4:0] buttons,
        input logic signed[15:0] switch,
        
        output logic done,
        output logic [BITS-1:0] accum
    );
    
    import calculator_pkg::*;
    
    localparam BC = $clog2(BITS);
    
    (* mark_debug="true" *) logic[4:0] last_op;
    (* mark_debug="true" *) logic[BITS-1:0] accumulator;
    
    typedef enum logic { IDLE, WAIT4BUTTON } state_t;
    
    (* mark_debug="true" *) state_t state;
    
    initial begin
        state = IDLE;
    end
    
    always @(posedge clk) begin
        done <= '0;
        case (state)
            IDLE: begin
                // Wait for the data to be entered.
                last_op     <= buttons;
                accumulator <= switch;
                if (start) state <= buttons[DOWN] ? IDLE : WAIT4BUTTON;
            end
            WAIT4BUTTON: begin
                // Wait for second data to be entered
                // If = is pressed, we perform the operation
                // The user can also click another operation
                // and enter more numbers.
                if (start) begin
                    last_op <= buttons;
                    case (1'b1)
                        last_op[UP]: accumulator <= accumulator * switch;
                        last_op[DOWN]: state <= IDLE;
                        last_op[LEFT]: accumulator <= accumulator + switch;
                        last_op[RIGHT]: accumulator <= accumulator - switch;
                        default : state <= WAIT4BUTTON;
                    endcase
                end else state <= WAIT4BUTTON;
            end
        endcase
    end
    
    assign accum = accumulator;
    
endmodule
