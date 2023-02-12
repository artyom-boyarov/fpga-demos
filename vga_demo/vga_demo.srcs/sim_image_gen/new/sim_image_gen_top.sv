`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2023 03:14:45 PM
// Design Name: 
// Module Name: sim_image_gen_top
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


module sim_image_gen_top(
    output logic[3:0] red,green,blue
    
    );
    
    logic[9:0] pos_x, pos_y;
    logic[18:0] mem_idx;
    logic clk, reset, de;

    
    image_gen dut(clk, reset, pos_x, pos_y, de, mem_idx, red, green, blue);
    
    initial begin
        pos_x = 0;
        pos_y = 0;
        mem_idx = 0;
        de = 1;
        reset = 1;
        clk = 1;
        #1;
        clk = 0;
        reset = 0;
        #1;
        repeat (307200) begin
            clk = 1;
            #1;
            clk = 0;
            pos_x = pos_x + 1;
            pos_y = pos_y + 1;
            mem_idx = mem_idx + 1;            
            #1;
        end
    end
endmodule
