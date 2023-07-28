`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2023 10:15:49 AM
// Design Name: 
// Module Name: riscv_soc_top
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


module riscv_soc_top(
    input logic clk,
    input logic btnC,
    output logic[15:0] led,
    input logic[15:0] sw
    );
    
    
    logic[3:0] mmio_addr;
    logic mmio_rd_en;
    logic mmio_wr_en;
    logic[7:0] mmio_wr_data;
    logic[7:0] mmio_rd_data;
    
    logic clk_80mhz;
    
    clk_wiz_0 impl_clk_wiz_80mhz (
        .clk_in1(clk),
        .reset(reset),
        .clk_out1(clk_80mhz)
    );
    
    riscv_top impl_riscv_top (
        .clk(clk_80mhz),
        .reset(btnC),
        
        .mmio_addr(mmio_addr),
        .mmio_rd_en(mmio_rd_en),
        .mmio_wr_en(mmio_wr_en),
        .mmio_wr_data(mmio_wr_data),
        .mmio_rd_data(mmio_rd_data)
    );
    
    mmio impl_mmio(
        .clk(clk_80mhz),
        .wr_en(mmio_wr_en),
        .rd_en(mmio_rd_en),
        .addr(mmio_addr[3:0]),
        .wr_data(mmio_wr_data),
        .rd_data(mmio_rd_data),
        
        .sw(sw),
        .led(led)
    );
    
endmodule
