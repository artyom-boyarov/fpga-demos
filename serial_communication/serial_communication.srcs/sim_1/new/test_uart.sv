`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 11:17:57 AM
// Design Name: 
// Module Name: test_uart
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


module test_uart();
    logic clk, start, uart_out; 
    logic[1:0] uart_state;
    logic[9:0] uart_counter;
    uart #(5) uart_test(clk, start, uart_out, uart_state);
    logic[31:0] count;
    always begin
        clk = 1; #2; clk = 0; #2;
    end
    
    initial begin
        count  = 0;
    end
    
    always @(posedge clk) begin
        if ((count >= 5 && count < 10) || (count >= 85 && count < 90))
            start = 1;
        else start = 0;   
        count = count+1;
        if (count == 1000)
            $finish;
    end
endmodule
