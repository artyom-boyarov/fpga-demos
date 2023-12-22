`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2023 06:12:53 PM
// Design Name: 
// Module Name: sim_adt7410_i2c_scl_counter
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


module sim_adt7410_i2c_scl_counter(
    );

    logic clk, start, finished;

    logic i2c_sda, i2c_sda_out, i2c_sda_out_en;
    logic i2c_scl, i2c_scl_out_en;
    
    logic[15:0] temp_out;

    adt7410_i2c #(.CLK_F(100_000_000)) impl_adt7410_i2c(
        .scl(i2c_scl),
        .sda_out(i2c_sda_out),
        .sda_in(i2c_sda),
        .sda_out_en(i2c_sda_out_en),
        .scl_out_en(i2c_scl_out_en),

        .clk(clk),
        .temp_out(temp_out),
        .start(start),
        .finished(finished)
    );

    initial begin
        clk = 0;
            
        repeat (50000000) begin
            clk ^= 1;
            #1;
        end
    end


endmodule
