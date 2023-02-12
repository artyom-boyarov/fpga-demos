`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2023 05:44:07 PM
// Design Name: 
// Module Name: image_gen
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


module image_gen(
        input logic clk, reset,
        input logic[9:0] pos_x,
        input logic[9:0] pos_y,
        input logic de,
        input logic[18:0] pixel_number,
        output logic[3:0] red,
        output logic[3:0] green,
        output logic[3:0] blue
    );
    
    logic ena = 1;
    logic[15:0] dout;
    
    logic[15:0] data_mem [(2**18)-1:0];
    
    integer i;
    initial begin
        /*
        for ( i =0; i < 2**20; i = i+1) begin
            data_mem[i] <= i[15:0];
        end
        */
        $readmemh("Mandelbrot_440x330.mem", data_mem);
    end
    
    always @(posedge clk) begin
        dout <= data_mem[pixel_number[17:0]];    
    end
    
    /*
    xpm_memory_sprom #(
        .ADDR_WIDTH_A(20),
        .MEMORY_INIT_FILE("image_file.mem"),
        .MEMORY_SIZE(2**23),
        .READ_DATA_WIDTH_A(16),
        .READ_LATENCY_A(1)
    ) xpm_memory_sprom_inst (
        .clka(clk),
        .addra(pixel_number << 1),
        .ena(ena),
        .douta(dout),
        .rsta(reset)
    ); */
    
    //logic square;
    
    always_comb begin
        /*
        square  = (pos_x > 220 && pos_x < 420) && (pos_y > 140 && pos_y < 340);
        
        red     = (square) ? 4'hF : pixel_number[3:0];
        green   = (square) ? 4'hF : pixel_number[7:4];
        blue    = (square) ? 4'hF : pixel_number[11:8];
        */
        
        red     = dout[15:12];
        green   = dout[11:8];
        blue    = dout[7:4];
    end
endmodule
