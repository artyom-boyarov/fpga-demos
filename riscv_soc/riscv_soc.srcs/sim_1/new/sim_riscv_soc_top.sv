`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2023 03:36:23 PM
// Design Name: 
// Module Name: sim_riscv_soc_top
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


module sim_riscv_soc_top(

    );
    
    logic clk;
    logic[15:0] led;
    logic[15:0] sw;
    logic reset;
    
    riscv_soc_top impl_soc (
        .clk(clk),
        .led(led),
        .btnC(reset),
        .sw(sw)
    );
    
    initial begin
        sw = 16'hF0A2;
        reset = 1;
        clk = 1; #1; clk = 0; #1;
        clk = 1; #1; clk = 0; #1;
        reset = 0;
        repeat(500) begin
            clk = 1; #1; clk = 0; #1;
        end
    end
    
endmodule
