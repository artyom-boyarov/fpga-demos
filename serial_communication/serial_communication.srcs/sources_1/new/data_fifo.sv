`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2023 06:38:10 PM
// Design Name: 
// Module Name: data_fifo
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


module data_fifo(
        input logic clk,
        input logic wr_en,
        input logic[7:0] wr_data,
        input logic read_en,
        output logic[7:0] read_data
    );
    
    xpm_fifo_sync #(
        .FIFO_WRITE_DEPTH(16),
        .WRITE_DATA_WIDTH(8)
    )
    impl_xpm_fifo_sync (
        
    );
endmodule
