`timescale 1ps / 1ps
module tb_pwm(output logic[15:0] tb_led);

    logic clk;

    pwm #(10, 1) pwm_dut_1(clk, tb_led[0]);
    pwm #(10, 4) pwm_dut_2(clk, tb_led[1]);
    pwm #(10, 9) pwm_dut_3(clk, tb_led[2]);

    initial begin

        repeat (50) begin
            clk = 1;
            #1;
            clk = 0;
            #1;
        end
    end
endmodule
