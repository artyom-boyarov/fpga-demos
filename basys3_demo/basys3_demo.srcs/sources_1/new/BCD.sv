`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2022 04:58:06 PM
// Design Name: 
// Module Name: BCD
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


module BCD(
        input logic[3:0] LED_IN,
        output logic[6:0] LED_OUT
    );
    
    always_comb begin
        case(LED_IN)
            4'b0000: LED_OUT = 7'b0000001; // "0"  
            4'b0001: LED_OUT = 7'b1001111; // "1" 
            4'b0010: LED_OUT = 7'b0010010; // "2" 
            4'b0011: LED_OUT = 7'b0000110; // "3" 
            4'b0100: LED_OUT = 7'b1001100; // "4" 
            4'b0101: LED_OUT = 7'b0100100; // "5" 
            4'b0110: LED_OUT = 7'b0100000; // "6" 
            4'b0111: LED_OUT = 7'b0001111; // "7" 
            4'b1000: LED_OUT = 7'b0000000; // "8"  
            4'b1001: LED_OUT = 7'b0000100; // "9" 
            default: LED_OUT = 7'b1111110; // "0"
        endcase
    end
endmodule
