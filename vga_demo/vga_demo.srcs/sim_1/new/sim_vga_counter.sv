`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2023 04:08:10 PM
// Design Name: 
// Module Name: sim_vga_counter
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


module sim_vga_counter(
        output logic[9:0] pos_x,
        output logic[9:0] pos_y,
        output logic hsync,
        output logic vsync,
        output logic de,
        output logic[18:0] pixel_idx,
        output logic clk_out
    );
    
    logic clk, reset;
    vga_counter impl_vga_counter(
        clk, reset, pos_x, pos_y, hsync, vsync, de, pixel_idx
    );
    
    initial begin
        reset = 1;
        clk = 1;
        #1;
        clk = 0;
        #1;
        reset = 0;
        repeat (420100) begin
            clk = 1;
            #1;
            clk = 0;
            #1;
        end
    end
    
    assign clk_out = clk;
endmodule
