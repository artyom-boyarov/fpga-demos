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
    
    logic[3:0] number1, number2, number3, number4;
    
    logic[1:0] sel;
    
    assign displayed_number = { number1, number2, number3, number4 };
    
    always_ff @(posedge clk)    
    begin
        if (btnC) begin
            number1 <= 0;
            number2 <= 0;
            number3 <= 0;
            number4 <= 0;
        end
        if (btnR)
            if (sel != 3)
                sel <= sel +1;
        if (btnL)
            if (sel != 0)
                sel <= sel -1;
        if (btnU)
            case (sel)
                2'b00:
                    number1 <= number1 + 1;
                2'b01:
                    number2 <= number2 + 1;
                2'b10:
                    number3 <= number3 + 1;
                2'b11:
                    number4 <= number4 + 1;
            endcase
        if (btnD)
            case (sel)
                2'b00:
                    number1 <= number1 - 1;
                2'b01:
                    number2 <= number2 - 1;
                2'b10:
                    number3 <= number3 - 1;
                2'b11:
                    number4 <= number4 - 1;
            endcase
    end
    
endmodule
