`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2023 05:38:12 PM
// Design Name: 
// Module Name: mem_test
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


module mem_test(
        input logic clk,
        input logic[15:0] sw,
        output logic[7:0] led
    );
    
    logic[15:0] mem_addr;
    logic[7:0] mem_out;
    logic[7:0] memory [(2**16)-1:0];
    
    initial begin
        integer i;
        for (i = 0; i < 2**16; i = i + 1) begin
            memory[i] = i[9:2];
        end
    end
    
    always_ff @(posedge clk) 
        mem_out <= memory[mem_addr];
    

    assign mem_addr = sw;
    
    assign led = mem_out;
    
endmodule
