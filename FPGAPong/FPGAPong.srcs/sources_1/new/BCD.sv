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
            4'h0: LED_OUT = 7'b0000001; // "0"  
            4'h1: LED_OUT = 7'b1001111; // "1" 
            4'h2: LED_OUT = 7'b0010010; // "2" 
            4'h3: LED_OUT = 7'b0000110; // "3" 
            4'h4: LED_OUT = 7'b1001100; // "4" 
            4'h5: LED_OUT = 7'b0100100; // "5" 
            4'h6: LED_OUT = 7'b0100000; // "6" 
            4'h7: LED_OUT = 7'b0001111; // "7" 
            4'h8: LED_OUT = 7'b0000000; // "8"  
            4'h9: LED_OUT = 7'b0000100; // "9" 
            4'ha: LED_OUT = 7'b0001000; // "A" 
            4'hb: LED_OUT = 7'b1100000; // "B" 
            4'hc: LED_OUT = 7'b0110001; // "C" 
            4'hd: LED_OUT = 7'b1000010; // "D" 
            4'he: LED_OUT = 7'b0110000; // "E" 
            4'hf: LED_OUT = 7'b0111000; // "F"
            default: LED_OUT = 7'b1111110; // "-"
        endcase
    end
endmodule
