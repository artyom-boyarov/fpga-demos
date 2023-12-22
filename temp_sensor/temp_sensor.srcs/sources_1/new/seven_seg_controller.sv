`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2023 11:35:39 AM
// Design Name: 
// Module Name: seven_seg_controller
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


module seven_seg_controller(
    input logic clk,
    input logic[15:0] displayed_number,
    output logic[6:0] seg,
    output logic[3:0] an
    );
    
    logic[3:0] LED_IN;
    
    BCD bcd(LED_IN, seg);
    
    logic[19:0] seg_refresh_counter;
    logic[1:0] LED_activate_counter;
    
    assign LED_activate_counter = seg_refresh_counter[19:18];
    
    always_ff @(posedge clk)
        seg_refresh_counter <= seg_refresh_counter + 1;
    
    
    always_comb begin
        case(LED_activate_counter)
            2'b00: begin
                an = 4'b1110;
                LED_IN = displayed_number[3:0];
            end
            2'b01: begin
                an = 4'b1101;
                LED_IN = displayed_number[7:4];
            end
            2'b10: begin
                an = 4'b1011;
                LED_IN = displayed_number[11:8];
            end
            2'b11: begin
                an = 4'b0111;
                LED_IN = displayed_number[15:12];
            end
        endcase
    end
endmodule
