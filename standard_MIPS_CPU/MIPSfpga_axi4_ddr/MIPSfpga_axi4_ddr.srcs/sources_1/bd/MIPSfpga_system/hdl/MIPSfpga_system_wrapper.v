//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2.2 (win64) Build 2348494 Mon Oct  1 18:25:44 MDT 2018
//Date        : Sat Dec 28 13:42:10 2019
//Host        : QYC running 64-bit major release  (build 9200)
//Command     : generate_target MIPSfpga_system_wrapper.bd
//Design      : MIPSfpga_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPSfpga_system_wrapper
   (CLK100MHZ,
    CPU_RESETN,
    DDR2_SDRAM_addr,
    DDR2_SDRAM_ba,
    DDR2_SDRAM_cas_n,
    DDR2_SDRAM_ck_n,
    DDR2_SDRAM_ck_p,
    DDR2_SDRAM_cke,
    DDR2_SDRAM_cs_n,
    DDR2_SDRAM_dm,
    DDR2_SDRAM_dq,
    DDR2_SDRAM_dqs_n,
    DDR2_SDRAM_dqs_p,
    DDR2_SDRAM_odt,
    DDR2_SDRAM_ras_n,
    DDR2_SDRAM_we_n,
    GPIO_OUT,
    JB1,
    JB2,
    JB3,
    JB4,
    JB7,
    JB8,
    JD10,
    JD3,
    JD4,
    JD9,
    PWM_OUT,
    UART2_RXD_OUT,
    UART2_TXD_IN,
    UART_RXD_OUT,
    UART_TXD_IN,
    beeper_out);
  input CLK100MHZ;
  input CPU_RESETN;
  output [12:0]DDR2_SDRAM_addr;
  output [2:0]DDR2_SDRAM_ba;
  output DDR2_SDRAM_cas_n;
  output [0:0]DDR2_SDRAM_ck_n;
  output [0:0]DDR2_SDRAM_ck_p;
  output [0:0]DDR2_SDRAM_cke;
  output [0:0]DDR2_SDRAM_cs_n;
  output [1:0]DDR2_SDRAM_dm;
  inout [15:0]DDR2_SDRAM_dq;
  inout [1:0]DDR2_SDRAM_dqs_n;
  inout [1:0]DDR2_SDRAM_dqs_p;
  output [0:0]DDR2_SDRAM_odt;
  output DDR2_SDRAM_ras_n;
  output DDR2_SDRAM_we_n;
  output [15:0]GPIO_OUT;
  input JB1;
  input JB2;
  output JB3;
  input JB4;
  input JB7;
  input JB8;
  input JD10;
  output JD3;
  input JD4;
  output JD9;
  output [3:0]PWM_OUT;
  output UART2_RXD_OUT;
  input UART2_TXD_IN;
  output UART_RXD_OUT;
  input UART_TXD_IN;
  output [1:0]beeper_out;

  wire CLK100MHZ;
  wire CPU_RESETN;
  wire [12:0]DDR2_SDRAM_addr;
  wire [2:0]DDR2_SDRAM_ba;
  wire DDR2_SDRAM_cas_n;
  wire [0:0]DDR2_SDRAM_ck_n;
  wire [0:0]DDR2_SDRAM_ck_p;
  wire [0:0]DDR2_SDRAM_cke;
  wire [0:0]DDR2_SDRAM_cs_n;
  wire [1:0]DDR2_SDRAM_dm;
  wire [15:0]DDR2_SDRAM_dq;
  wire [1:0]DDR2_SDRAM_dqs_n;
  wire [1:0]DDR2_SDRAM_dqs_p;
  wire [0:0]DDR2_SDRAM_odt;
  wire DDR2_SDRAM_ras_n;
  wire DDR2_SDRAM_we_n;
  wire [15:0]GPIO_OUT;
  wire JB1;
  wire JB2;
  wire JB3;
  wire JB4;
  wire JB7;
  wire JB8;
  wire JD10;
  wire JD3;
  wire JD4;
  wire JD9;
  wire [3:0]PWM_OUT;
  wire UART2_RXD_OUT;
  wire UART2_TXD_IN;
  wire UART_RXD_OUT;
  wire UART_TXD_IN;
  wire [1:0]beeper_out;

  MIPSfpga_system MIPSfpga_system_i
       (.CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN),
        .DDR2_SDRAM_addr(DDR2_SDRAM_addr),
        .DDR2_SDRAM_ba(DDR2_SDRAM_ba),
        .DDR2_SDRAM_cas_n(DDR2_SDRAM_cas_n),
        .DDR2_SDRAM_ck_n(DDR2_SDRAM_ck_n),
        .DDR2_SDRAM_ck_p(DDR2_SDRAM_ck_p),
        .DDR2_SDRAM_cke(DDR2_SDRAM_cke),
        .DDR2_SDRAM_cs_n(DDR2_SDRAM_cs_n),
        .DDR2_SDRAM_dm(DDR2_SDRAM_dm),
        .DDR2_SDRAM_dq(DDR2_SDRAM_dq),
        .DDR2_SDRAM_dqs_n(DDR2_SDRAM_dqs_n),
        .DDR2_SDRAM_dqs_p(DDR2_SDRAM_dqs_p),
        .DDR2_SDRAM_odt(DDR2_SDRAM_odt),
        .DDR2_SDRAM_ras_n(DDR2_SDRAM_ras_n),
        .DDR2_SDRAM_we_n(DDR2_SDRAM_we_n),
        .GPIO_OUT(GPIO_OUT),
        .JB1(JB1),
        .JB2(JB2),
        .JB3(JB3),
        .JB4(JB4),
        .JB7(JB7),
        .JB8(JB8),
        .JD10(JD10),
        .JD3(JD3),
        .JD4(JD4),
        .JD9(JD9),
        .PWM_OUT(PWM_OUT),
        .UART2_RXD_OUT(UART2_RXD_OUT),
        .UART2_TXD_IN(UART2_TXD_IN),
        .UART_RXD_OUT(UART_RXD_OUT),
        .UART_TXD_IN(UART_TXD_IN),
        .beeper_out(beeper_out));
endmodule
