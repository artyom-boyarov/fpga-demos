`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2023 10:17:26 AM
// Design Name: 
// Module Name: mmio
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


module mmio(
        input logic clk,
        input logic wr_en,
        input logic rd_en,
        input logic[3:0] addr,
        input logic[7:0] wr_data,
        output logic[7:0] rd_data,
        
        // I/O devices
        input logic[15:0] sw,
        output logic[15:0] led
    );
    
    always_comb
    begin
        if (addr == 4'h0 && wr_en) led[7:0] = wr_data;
        if (addr == 4'h1 && wr_en) led[15:8] = wr_data;
        if (addr == 4'h2 && rd_en) rd_data = sw[7:0];
        if (addr == 4'h3 && rd_en) rd_data = sw[15:8];
    end
    
    
endmodule
