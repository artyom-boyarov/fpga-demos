`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/24/2023 09:03:34 AM
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


module top
    #(
        parameter BITS = 32,
        parameter NUM_SEGMENTS = `NUM_SEGMENTS,
        parameter SM_TYPE = "MEALY", // "MEALY" or "MOORE"
        parameter USE_PLL = "TRUE" // "TRUE" or "FALSE"
    )
    (
        input logic clk,
        input logic[4:0] buttons,
        input logic[15:0] sw,
        
        output logic[15:0] led,
        output logic[3:0] an,
        output logic[6:0] seg
    );
    
    import calculator_pkg::*;
    
    logic clk_50mhz;
    
    generate
        if (USE_PLL == "TRUE") begin : g_USEPLL 
            clk_wiz_0 clk_wiz_impl (
                .clk_in(clk),
                .clk_out1(clk_50mhz)
            );
        end else begin : g_NO_PLL
            assign clk_50mhz = clk;
        end
    endgenerate
    
    logic[31:0] accumulator;
    logic[15:0] display_number;
    
    (* ASYNC_REG = "TRUE" *) logic[2:0] button_sync;
    logic counter_en;
    logic[7:0] counter;
    logic button_down;
    logic[4:0] button_capt;
    logic[15:0] sw_capt;
    
    seven_seg_controller seven_seg_controller_impl (
        .clk(clk_50mhz),
        .displayed_number(display_number),
        .seg(seg),
        .an(an)
    );
    
    always @(posedge clk_50mhz) begin
        button_down <= '0;
        button_capt <= '0;
        button_sync <= (button_sync << 1) | (|buttons);
        if (button_sync[2:1] == 2'b01) counter_en <= '1;
        else if (~button_sync[1]) counter_en <= '0;
        if (counter_en) begin
            if (counter == 255) begin
                counter_en <= '0;
                counter <= '0;
                button_down <= '1;
                button_capt <= buttons;
                sw_capt <= sw;
            end else counter <= counter + 1;
        end        
    end
    
    generate
        if (SM_TYPE == "MOORE") begin: g_MOORE
            calculator_moore #(
                .BITS(BITS)
            ) impl_moore (
                .clk(clk_50mhz),
                .start(button_down),
                .buttons(button_capt),
                .switch(sw_capt),
                .done (),
                .accum(accumulator)
            );
        end else begin: g_MEALY
            calculator_mealy #(
                .BITS(BITS)
            ) impl_mealy (
                .clk(clk_50mhz),
                .start(button_down),
                .buttons(button_capt),
                .switch(sw_capt),
                .done (),
                .accum(accumulator)
            );
        end
    endgenerate
    
    always @(posedge clk_50mhz) begin
        display_number <= bin_to_bcd(accumulator);
    end
    
    assign led = sw;
    
endmodule // top
