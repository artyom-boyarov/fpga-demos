//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Sun Feb 12 11:46:00 2023
//Host        : LAPTOP-RLSJ6GTT running 64-bit major release  (build 9200)
//Command     : generate_target MicroBlaze_design_wrapper.bd
//Design      : MicroBlaze_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MicroBlaze_design_wrapper
   (led_16bits_tri_o,
    push_buttons_4bits_tri_i,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [15:0]led_16bits_tri_o;
  input [3:0]push_buttons_4bits_tri_i;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]led_16bits_tri_o;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  MicroBlaze_design MicroBlaze_design_i
       (.led_16bits_tri_o(led_16bits_tri_o),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
