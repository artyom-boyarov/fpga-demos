`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2022 09:12:06 AM
// Design Name: 
// Module Name: seg_7
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


module seg_7(
    input logic clk, clr,
    input logic[15:0] val,
    output logic[6:0] seg,
    output logic[3:0] an,
    output logic dp
    );
    logic[19:0] clockdiv;
    logic[1:0] sel;
    logic[3:0] digit;
    assign sel=clockdiv[19:18];
    
    always_ff @(posedge clk)
        if (clr)
            clockdiv <= 0;
        else
            clockdiv <= clockdiv +1;
    always_comb
    begin
        case(sel)
            'b00: digit = val[3:0];
            'b01: digit = val[7:4];
            'b10: digit = val[11:8];
            'b11: digit = val[15:12];
        endcase
        
    end
endmodule
