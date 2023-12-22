`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2023 03:24:25 PM
// Design Name: 
// Module Name: top
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


module top(
        input logic clk,
        input logic[15:0] sw,
        input logic btnC,
        output logic[15:0] led,
        output logic[6:0] seg,
        output logic[3:0] an,
        output logic dp,
        inout logic I2C_SCL,
        inout logic I2C_SDA
    );

    // Do we register temp_data?
    // Check timing analysis once design complete, then perhaps pipeline

    // First 8 bits = integer part
    // Last 8 bits = decimal part
    logic[15:0] temp_data;
    //assign temp_data[15:0] = 16'hBEEF; // For testing only
    assign led = temp_data;

    logic i2c_read_enable, i2c_read_finished;
    (* mark_debug = "true" *) logic sda_en;
    (* mark_debug = "true" *) logic scl_en;
    (* mark_debug = "true" *) logic sda_out;
    (* mark_debug = "true" *) logic scl_out;

    adt7410_i2c impl_adt7410_i2c (
        .sda_out(sda_out),
        .sda_en(sda_en),
        .sda_in(I2C_SDA),
        
        .scl_out(scl_out),
        .scl_en(scl_en),
        .scl_in(I2C_SCL),

        .clk(clk),
        .temp_out(temp_data),
        .start_trigger(btnC),
        .finished(i2c_read_finished)
    );
    

    assign I2C_SDA = (sda_en & ~sda_out) ? 1'b0 : 1'bz;
    assign I2C_SCL = (scl_en & ~scl_out) ? 1'b0 : 1'bz;

    // Displayed number is a 16-bit number where each 4 bits are the digit we want to display.
    // e.g. If we want to display 12.27, displayed_number is 0x7221
    logic[15:0] temp_display;
    temp_data_to_display_num impl_temp_data_to_display_num (
        .clk(clk),
        .raw_temp_data(temp_data),
        .formatted_temp(temp_display)
    );


    seven_seg_controller impl_seven_seg_controller (
        .clk(clk),
        .displayed_number(temp_display),
        .seg(seg),
        .an(an)
    );
    assign dp = '0; // Set the decimal point

endmodule
