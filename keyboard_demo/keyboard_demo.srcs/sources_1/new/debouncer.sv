`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2023 04:47:29 PM
// Design Name: 
// Module Name: debouncer
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


module debouncer
    #(parameter COUNT=31)
(
    input logic clk,
    input logic I,
    output logic O
    );
    
    logic[$clog2(COUNT):0] count;
    logic Iv;
    
    always_ff @(posedge clk)
        if (I == Iv) begin
            if (count == COUNT)
                O <= I;
            else
                count <= count + 1;
        end else begin
            count <= 0;
            Iv <= I;
        end
endmodule
