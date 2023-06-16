`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/16/2023 09:19:45 AM
// Design Name: 
// Module Name: button_press_detector
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


module button_press_detector
    (
        input logic clk,
        input logic button_in,
        output logic button_down
    );
    
    logic[2:0] button_sync;
    logic counter_en;
    logic[7:0] counter;
    
    always @(posedge clk) begin
        button_down <= '0;
        button_sync <= (button_sync << 1) | button_in;
        if (button_sync[2:1] == 2'b01) counter_en <= '1;
        else if (~button_sync[1]) counter_en <= '0;
        if (counter_en) begin
            if (counter == 255) begin
                button_down <= '1;
                counter_en <= '0;
                counter <= '0;
            end else counter <= counter + 1;
        end        
    end

endmodule
