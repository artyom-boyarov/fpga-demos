
module adt7410_i2c_scl_counter
    #(parameter CLK_F=100_000_000, // clock frequency
     I2C_PER=4) // 4us 
(
    input logic clk,
    input logic enable,
    output logic scl_out,
    output logic comb_en
);

    localparam I2C_PERIOD_CYCLES = (4 * CLK_F) / (1000_000);
    localparam I2C_PERIOD_MIDDLE = I2C_PERIOD_CYCLES / 2;
    localparam I2C_PERIOD_COMB_EN = I2C_PERIOD_CYCLES * 0.75;
    
    logic[$clog2(I2C_PERIOD_CYCLES):0] counter;
    logic scl;
    
    always_ff @(posedge clk)
        if (enable)
            if (counter < I2C_PERIOD_CYCLES)
                counter <= counter + 1;
            else
                counter <= 0;
        else
            counter <= 0;

    assign scl      = (counter < I2C_PERIOD_MIDDLE) ? '1 : '0;
    assign comb_en  = (counter == I2C_PERIOD_COMB_EN);
    assign scl_out  = (enable) ? scl : '1;

endmodule
