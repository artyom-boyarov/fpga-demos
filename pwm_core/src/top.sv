
module pwm_top(input logic clk, output logic[15:0] led);
/*
	// 10 MHz 10%, 50%
	pwm #(10, 1) pwm_test_1(clk, led[0]);
	pwm #(10, 5) pwm_test_2(clk, led[1]);
	// 1 MHz 10%, 50%
	pwm #(100, 10) pwm_test_3(clk, led[2]);
	pwm #(100, 50) pwm_test_4(clk, led[3]);

	// 100 kHz 10%, 50%
	pwm #(1000, 100) pwm_test_5(clk, led[4]);
	pwm #(1000, 500) pwm_test_6(clk, led[5]);

	// 10 kHz 10%, 50%
	pwm #(10000, 1000) pwm_test_7(clk, led[6]);
	pwm #(10000, 5000) pwm_test_8(clk, led[7]);

	// 1 kHz 10%, 50%
	pwm #(100000, 10000) pwm_test_9(clk, led[8]);
	pwm #(100000, 50000) pwm_test_10(clk, led[9]);

	// 100 Hz 10%, 50%
	pwm #(1000000, 100000) pwm_test_11(clk, led[10]);
	pwm #(1000000, 500000) pwm_test_12(clk, led[11]);

	// 10 Hz 10%, 50%
	pwm #(10000000, 1000000) pwm_test_13(clk, led[12]);
	pwm #(10000000, 5000000) pwm_test_14(clk, led[13]);

	// 1 Hz 10%, 50%
	pwm #(100000000, 10000000) pwm_test_15(clk, led[14]);
	pwm #(100000000, 50000000) pwm_test_16(clk, led[15]);
	*/

	// 100 kHz
	pwm #(1000, 10) pwm_test_1(clk, led[0]);
	pwm #(1000, 50) pwm_test_2(clk, led[1]);
	pwm #(1000, 100) pwm_test_9(clk, led[2]);
	pwm #(1000, 200) pwm_test_3(clk, led[3]);
	pwm #(1000, 300) pwm_test_4(clk, led[4]);
	pwm #(1000, 400) pwm_test_5(clk, led[5]);
	pwm #(1000, 500) pwm_test_6(clk, led[6]);
	pwm #(1000, 600) pwm_test_7(clk, led[7]);
	pwm #(1000, 700) pwm_test_8(clk, led[8]);
	pwm #(1000, 800) pwm_test_9(clk, led[9]);
	pwm #(1000, 900) pwm_test_9(clk, led[10]);
	pwm #(1000, 1000) pwm_test_9(clk, led[11]);
endmodule
