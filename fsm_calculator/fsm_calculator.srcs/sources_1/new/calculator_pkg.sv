`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2023 09:13:27 AM
// Design Name: 
// Module Name: calculator_pkg
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

`ifndef NUM_SEGMENTS
`define NUM_SEGMENTS 4
`endif

`ifndef _CALCULATOR_PKG
`define _CALCULATOR_PKG

package calculator_pkg;

    localparam NUM_SEGMENTS = `NUM_SEGMENTS;
    localparam UP           = 3'd0;
    localparam DOWN         = 3'd1;
    localparam LEFT         = 3'd2;
    localparam RIGHT        = 3'd3;
    localparam CENTER       = 3'd4;

    function logic[NUM_SEGMENTS-1:0][3:0] bin_to_bcd (logic[31:0] bin_in);
        logic[NUM_SEGMENTS*4 - 1:0] shifted;
        shifted = {30'b0, bin_in[31:30]};
        for (int i = 29; i >= 1; i--) begin
            shifted = shifted << 1 | bin_in[i];
            for (int j = 0; j < NUM_SEGMENTS; j++) begin
                if (shifted[j*4+:4] > 4) shifted[j*4+:4] += 3;
            end
        end
        shifted = shifted << 1 | bin_in[0];
        for (int i = 0; i < NUM_SEGMENTS; i++) begin
            bin_to_bcd[i] = shifted[4*i+:4];
        end
    endfunction // bin_to_bcd

endpackage // calculator_pkg
`endif