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


module cathode_top(
        input logic[3:0] encoded,
		input logic clk,
        output logic[6:0] cathode
    );
    
    always_ff @(posedge clk) begin
        case(encoded)
            4'h0: cathode <= 7'b0000001; // "0"  
            4'h1: cathode <= 7'b1001111; // "1" 
            4'h2: cathode <= 7'b0010010; // "2" 
            4'h3: cathode <= 7'b0000110; // "3" 
            4'h4: cathode <= 7'b1001100; // "4" 
            4'h5: cathode <= 7'b0100100; // "5" 
            4'h6: cathode <= 7'b0100000; // "6" 
            4'h7: cathode <= 7'b0001111; // "7" 
            4'h8: cathode <= 7'b0000000; // "8"  
            4'h9: cathode <= 7'b0000100; // "9" 
            4'ha: cathode <= 7'b0001000; // "A" 
            4'hb: cathode <= 7'b1100000; // "B" 
            4'hc: cathode <= 7'b0110001; // "C" 
            4'hd: cathode <= 7'b1000010; // "D" 
            4'he: cathode <= 7'b0110000; // "E" 
            4'hf: cathode <= 7'b0111000; // "F"
            default: cathode <= 7'b1111110; // "-"
        endcase
    end
endmodule
