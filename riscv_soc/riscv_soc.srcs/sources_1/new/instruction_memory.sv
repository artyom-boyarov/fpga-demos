`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2023 10:38:17 AM
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
        input logic[11:0] addr,
        input logic clk,
        output logic[31:0] instruction
    );
    
    logic[31:0] instr_mem[(2**10)-1:0];
    
    initial begin
        $readmemh("soc_led_test.mem", instr_mem); // TODO: create Instructions.mem
    end
    
    always_ff @(posedge clk)
        instruction <= instr_mem[addr >> 2];

endmodule
