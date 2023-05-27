`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2023 04:55:15 PM
// Design Name: 
// Module Name: PS2Receiver
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


module PS2Receiver(
    input logic clk,
    input logic PS2Clk,
    input logic PS2Data,
    output logic[15:0] keycode,
    output logic finished
    );
    
    logic PS2Clk_out, PS2Data_out;
    logic[3:0] count;
    logic[7:0] data_current;
    logic[7:0] data_prev;
    logic flag, pflag;
    
    debouncer #(.COUNT(19)) db_ps2clk(clk, PS2Clk, PS2Clk_out);
    debouncer #(.COUNT(19)) db_ps2data(clk, PS2Data, PS2Data_out);
    
    always_ff @(negedge PS2Clk_out)
    begin
        case(count)
            0:; // Start bit
            1: data_current[0] <= PS2Data_out;
            2: data_current[1] <= PS2Data_out;
            3: data_current[2] <= PS2Data_out;
            4: data_current[3] <= PS2Data_out;
            5: data_current[4] <= PS2Data_out;
            6: data_current[5] <= PS2Data_out;
            7: data_current[6] <= PS2Data_out;
            8: data_current[7] <= PS2Data_out;
            9: flag <= 1;
            10: flag <= 0;
        endcase
        
        if (count <= 9) count <= count+1;
        else count <= 0;
    end
    
    always_ff @(posedge clk) begin
        if (flag == 1 && pflag == 0) begin
            keycode <= {data_prev, data_current};// Only data_current is useful, this is the key currently being pressed
            finished <= 1;
            data_prev <= data_current;
        end else
            finished <= 0;
        pflag <= flag;
    end
    
endmodule
