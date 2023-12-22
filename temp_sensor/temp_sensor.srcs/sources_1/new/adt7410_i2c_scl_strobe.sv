`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2023 03:53:44 PM
// Design Name: 
// Module Name: adt7410_i2c_scl_strobe
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


module adt7410_i2c_scl_strobe
#(
    parameter CLK_F=100_000_000,
    parameter I2C_SCL_FREQ=250_000,
    parameter NUM_I2C_SCL_STATES=4
)
(
    input logic clk,
    output logic strobe
);

    localparam STROBE_PERIOD = (CLK_F) / (I2C_SCL_FREQ * NUM_I2C_SCL_STATES);
    logic[$clog2(STROBE_PERIOD):0] strobe_counter;

    initial 
        strobe_counter = 1;

    always @(posedge clk)
        if (strobe_counter < STROBE_PERIOD)
            strobe_counter <= strobe_counter + 1;
        else
            strobe_counter <= 1;

    assign strobe = (strobe_counter == STROBE_PERIOD);
endmodule
