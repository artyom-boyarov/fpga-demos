`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2023 12:40:31 PM
// Design Name: 
// Module Name: temp_data_to_display_num
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


module temp_data_to_display_num(
    input logic clk,
    input logic[15:0] raw_temp_data,
    output logic[15:0] formatted_temp
    );

    // Implemented with a ROM

    logic[7:0] data_rom_dec[15:0]; // 0x0 to 0xF
    logic[7:0] data_rom_int[255:0]; // 0x0 to 0xFF

    logic[7:0] dec_part_out;
    logic[7:0] int_part_out;

    initial begin
        $readmemh("TEMP_DISPLAY_DATA_DEC_ROM.mem", data_rom_dec, 0, 15);
        $readmemh("TEMP_DISPLAY_DATA_INT_ROM.mem", data_rom_int, 0, 255);
    end

    always @(posedge clk) begin
        dec_part_out <= data_rom_dec[raw_temp_data[6:3]];
        int_part_out <= data_rom_int[raw_temp_data[14:7]];
    end

    assign formatted_temp = {int_part_out, dec_part_out};
endmodule
