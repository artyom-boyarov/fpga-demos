`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.01.2025 10:52:13
// Design Name: 
// Module Name: button_one_high
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


module button_one_high(
        input logic in,
        output logic out,
        input logic clk
    );
    
    logic [3:0] sync_reg;
    
    always @(posedge clk) begin
        sync_reg <= {sync_reg[2:0], in};
    end
    
    initial begin
        sync_reg = 0;
    end
    
    assign out = ~sync_reg[3] & sync_reg[2];
endmodule
