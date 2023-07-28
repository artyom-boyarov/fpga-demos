`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2023 11:14:56 AM
// Design Name: 
// Module Name: mmio_control
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


module mmio_control(
        input logic[6:0] opcode,
        input logic[31:0] mem_addr,
        output logic mmio_rd_en,
        output logic mmio_wr_en
    );
    
    assign mmio_rd_en = (opcode == 7'b0000011 && mem_addr <= 4'hF);
    assign mmio_wr_en = (opcode == 7'b0100011 && mem_addr <= 4'hF);
    
endmodule
