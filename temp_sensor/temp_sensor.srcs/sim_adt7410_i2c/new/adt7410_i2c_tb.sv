`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: Heemogoblin Computer Inc
// Engineer: Artem Evgenyevych Boyarov
// 
// Create Date: 12/21/2023 11:48:54 AM
// Design Name: 
// Module Name: adt7410_i2c_tb
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


module adt7410_i2c_tb(

    );

    adt7410_i2c dut(.*);

    logic sda_out;
    logic sda_en;
    logic sda_in;
    logic scl_out;
    logic scl_en;
    logic scl_in;
    logic clk;
    logic[15:0] temp_out;
    logic start_trigger;
    logic finished;

    initial begin
        clk = 0;
        start_trigger = 1;
        #5;
        clk = 1;
        start_trigger = 1;
        #5;
        clk = 0;
        start_trigger = 1;
        #5;
        clk = 1;
        start_trigger = 0;
         
        repeat (50000000) begin
            clk ^= 1;
            #5; // 10 ns clock period
        end
    end
endmodule
