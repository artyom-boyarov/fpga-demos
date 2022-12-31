`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2022 09:22:52 AM
// Design Name: 
// Module Name: testbench
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


module testbench();
    logic clk,btnC, btnU, btnL, btnR, btnD, RsRx, RsTx;
    logic[15:0] sw;
    logic[15:0] led;
    logic reset;

    top test_top(
        clk,
        sw,
        led,
        btnC, btnU, btnL, btnR, btnD,
        RsTx,
        RsRx,
        reset
    );

    initial begin
        btnC = 0; clk = 0; #10;
        btnC = 1; clk ^= 1; #10;
        //assert (led === 1) else $error("Fail");
        btnC = 1; clk ^= 1; #10;
        btnC = 1; clk ^= 1; #10;
        btnC = 1; clk ^= 1; #10;
        btnC = 1; clk ^= 1; #10;
        btnC = 1; clk ^= 1; #10;
        btnC = 0; clk ^= 1; #10;
        btnC = 0; clk ^= 1; #10;
        //assert (led === 1) else $error("Fail");
        btnC = 0; clk ^= 1; #10;
        //assert (led === 2) else $error("Fail");
        btnC = 0; clk ^= 1; #10;
        btnC = 1; clk ^= 1; #10;
        btnC = 1; clk ^= 1; #10;
        btnC = 1; clk ^= 1; #10;
        btnC = 1; clk ^= 1; #10;
    end

endmodule
