`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2022 05:56:12 PM
// Design Name: 
// Module Name: button_counter
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


module BUTTON_COUNTER(
    input logic clk,
    input logic btnC, btnL, btnR, btnU, btnD,
    
    output logic[15:0] displayed_number
    );
    
    typedef enum logic[1:0] {BTN_UP, BTN_DOWN} btn_state_type;
    btn_state_type btn_state;
     
    always_ff @(posedge clk)
        case(btn_state)
            BTN_UP: begin
                if (btnC) begin
                    displayed_number <= displayed_number + 1;
                end
                btn_state <= (btnD) ? BTN_DOWN : BTN_UP;
            end
            BTN_DOWN: begin
                if (btnC) begin
                    displayed_number <= displayed_number - 1;
                end
                btn_state <= (btnU) ? BTN_UP : BTN_DOWN;         
            end
            default: begin
                btn_state <= BTN_UP;
            end
        endcase
    
endmodule
