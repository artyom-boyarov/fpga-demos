`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/04/2024 02:40:44 PM
// Design Name: 
// Module Name: light_sensor_xadc_top
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


module light_sensor_xadc_top(
        input logic clk,
        input logic btnC,
        input logic[7:0] JXADC,
        input logic[15:0] sw,
        output logic[15:0] led,
        output logic[6:0] seg,
        output logic dp,
        output logic[3:0] an
    );

    xadc_wiz_0 impl_xadc(
        .daddr_in(drp_addr),
          .dclk_in(clk),
          .den_in(drp_en),
          .di_in(0),
          .dwe_in(0),
          .reset_in(btnC),
          .vauxp6(JXADC[0]),              // Auxiliary channel 6
          .vauxn6(JXADC[4]),
          .vauxp7(JXADC[2]),              // Auxiliary channel 7
          .vauxn7(JXADC[6]),
          .vauxp14(JXADC[1]),             // Auxiliary channel 14
          .vauxn14(JXADC[5]),
          .vauxp15(JXADC[3]),             // Auxiliary channel 15
          .vauxn15(JXADC[7]),
          .busy_out(),
          .channel_out(),
          .do_out(adc_data),
          .drdy_out(adc_data_ready),
          .eoc_out(drp_en),
          .eos_out(),
          .vp_in(0),
          .vn_in(0)
    );

    logic[6:0] drp_addr;
    assign drp_addr = 8'h16;
    logic drp_en;
    logic[15:0] adc_data;
    logic adc_data_ready;


    always @(posedge clk) begin
        
        if (adc_data_ready)
            case (adc_data[15:12])    
                1:  led <= 16'b11;
                2:  led <= 16'b111;
                3:  led <= 16'b1111;
                4:  led <= 16'b11111;
                5:  led <= 16'b111111;
                6:  led <= 16'b1111111; 
                7:  led <= 16'b11111111;
                8:  led <= 16'b111111111;
                9:  led <= 16'b1111111111;
                10: led <= 16'b11111111111;
                11: led <= 16'b111111111111;
                12: led <= 16'b1111111111111;
                13: led <= 16'b11111111111111;
                14: led <= 16'b111111111111111;
                15: led <= 16'b1111111111111111;                        
                default: led <= 16'b1;
            endcase
    end

endmodule
