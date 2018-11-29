// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 30 01:10:57 2018
// Host        : SKY-20170207CJV running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Xilinx_pro/MakeAComputer/thinpad_top/thinpad_top.sim/sim_1/synth/func/xsim/tb_func_synth.v
// Design      : thinpad_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Ctrl_SRAM_UART
   (uart_rdn_OBUF,
    uart_wrn_OBUF,
    base_ram_ce_n_OBUF,
    base_ram_oe_n_OBUF,
    base_ram_we_n_OBUF,
    dpy0_OBUF,
    \FSM_sequential_mode_reg[1] ,
    \FSM_sequential_mode_reg[0] ,
    E,
    \in_data_reg[0] ,
    \in_addr_reg[19] ,
    \mid_reg_reg[10] ,
    D,
    continue_reg,
    \base_ram_data[15] ,
    clk_50M_IBUF_BUFG,
    reset_btn_IBUF,
    leds_OBUF,
    out,
    in0,
    continue_reg_0,
    uart_tbre_IBUF,
    uart_tsre_IBUF,
    \mid_reg_reg[1] ,
    ctrl,
    Q,
    \in_data_reg[15] ,
    \data_reg[7]_0 );
  output uart_rdn_OBUF;
  output uart_wrn_OBUF;
  output base_ram_ce_n_OBUF;
  output base_ram_oe_n_OBUF;
  output base_ram_we_n_OBUF;
  output [0:0]dpy0_OBUF;
  output \FSM_sequential_mode_reg[1] ;
  output \FSM_sequential_mode_reg[0] ;
  output [0:0]E;
  output [0:0]\in_data_reg[0] ;
  output \in_addr_reg[19] ;
  output [10:0]\mid_reg_reg[10] ;
  output [10:0]D;
  output continue_reg;
  output [13:0]\base_ram_data[15] ;
  input clk_50M_IBUF_BUFG;
  input reset_btn_IBUF;
  input [2:0]leds_OBUF;
  input [0:0]out;
  input [1:0]in0;
  input continue_reg_0;
  input uart_tbre_IBUF;
  input uart_tsre_IBUF;
  input \mid_reg_reg[1] ;
  input ctrl;
  input [10:0]Q;
  input [13:0]\in_data_reg[15] ;
  input [7:0]\data_reg[7]_0 ;

  (* RTL_KEEP = "yes" *) wire CE;
  wire CE_i_1_n_0;
  wire [10:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_sequential_mode[1]_i_2_n_0 ;
  wire \FSM_sequential_mode[1]_i_3_n_0 ;
  wire \FSM_sequential_mode_reg[0] ;
  wire \FSM_sequential_mode_reg[1] ;
  wire OE_i_1_n_0;
  wire OE_i_2_n_0;
  wire [10:0]Q;
  wire WE_i_1_n_0;
  wire WE_i_2_n_0;
  wire base_ram_ce_n_OBUF;
  wire [13:0]\base_ram_data[15] ;
  wire base_ram_oe_n_OBUF;
  wire base_ram_we_n_OBUF;
  wire clk_50M_IBUF_BUFG;
  wire continue_reg;
  wire continue_reg_0;
  wire ctrl;
  wire [7:0]\data_reg[7]_0 ;
  wire [0:0]dpy0_OBUF;
  wire [1:0]in0;
  wire \in_addr_reg[19] ;
  wire [0:0]\in_data_reg[0] ;
  wire [13:0]\in_data_reg[15] ;
  wire [2:0]leds_OBUF;
  wire [10:0]\mid_reg_reg[10] ;
  wire \mid_reg_reg[1] ;
  wire [0:0]out;
  wire [31:7]p_0_in;
  wire rdn_i_1_n_0;
  wire \res[7]_i_1_n_0 ;
  wire reset_btn_IBUF;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [3:1]state__0;
  (* RTL_KEEP = "yes" *) wire success;
  wire success_i_1_n_0;
  wire uart_rdn_OBUF;
  wire uart_tbre_IBUF;
  wire uart_tsre_IBUF;
  wire uart_wrn_OBUF;
  wire wrn;
  wire wrn_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    CE_i_1
       (.I0(leds_OBUF[0]),
        .O(CE_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    CE_reg
       (.C(clk_50M_IBUF_BUFG),
        .CE(CE),
        .D(CE_i_1_n_0),
        .PRE(reset_btn_IBUF),
        .Q(base_ram_ce_n_OBUF));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(ctrl),
        .I1(state__0[3]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFEFE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(success),
        .I3(ctrl),
        .I4(CE),
        .O(state));
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(ctrl),
        .I1(state__0[3]),
        .I2(success),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(state),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(reset_btn_IBUF),
        .Q(CE));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(state),
        .CLR(reset_btn_IBUF),
        .D(CE),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(state),
        .CLR(reset_btn_IBUF),
        .D(state__0[1]),
        .Q(success));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(state),
        .CLR(reset_btn_IBUF),
        .D(\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(state__0[3]));
  LUT4 #(
    .INIT(16'h5754)) 
    \FSM_sequential_mode[0]_i_1 
       (.I0(out),
        .I1(\FSM_sequential_mode[1]_i_2_n_0 ),
        .I2(\FSM_sequential_mode[1]_i_3_n_0 ),
        .I3(in0[0]),
        .O(\FSM_sequential_mode_reg[0] ));
  LUT6 #(
    .INIT(64'h2C2C2CFF2C2C2C00)) 
    \FSM_sequential_mode[1]_i_1 
       (.I0(dpy0_OBUF),
        .I1(leds_OBUF[0]),
        .I2(out),
        .I3(\FSM_sequential_mode[1]_i_2_n_0 ),
        .I4(\FSM_sequential_mode[1]_i_3_n_0 ),
        .I5(in0[1]),
        .O(\FSM_sequential_mode_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40404044)) 
    \FSM_sequential_mode[1]_i_2 
       (.I0(leds_OBUF[0]),
        .I1(leds_OBUF[2]),
        .I2(dpy0_OBUF),
        .I3(out),
        .I4(continue_reg_0),
        .O(\FSM_sequential_mode[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hC040FF00FF000000)) 
    \FSM_sequential_mode[1]_i_3 
       (.I0(continue_reg_0),
        .I1(uart_tbre_IBUF),
        .I2(uart_tsre_IBUF),
        .I3(dpy0_OBUF),
        .I4(leds_OBUF[0]),
        .I5(out),
        .O(\FSM_sequential_mode[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4440)) 
    OE_i_1
       (.I0(out),
        .I1(leds_OBUF[0]),
        .I2(state__0[1]),
        .I3(success),
        .I4(CE),
        .O(OE_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    OE_i_2
       (.I0(success),
        .I1(CE),
        .I2(leds_OBUF[0]),
        .I3(out),
        .O(OE_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    OE_reg
       (.C(clk_50M_IBUF_BUFG),
        .CE(OE_i_1_n_0),
        .D(OE_i_2_n_0),
        .PRE(reset_btn_IBUF),
        .Q(base_ram_oe_n_OBUF));
  LUT5 #(
    .INIT(32'hFAAAEAAA)) 
    WE_i_1
       (.I0(CE),
        .I1(state__0[3]),
        .I2(out),
        .I3(leds_OBUF[0]),
        .I4(success),
        .O(WE_i_1_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    WE_i_2
       (.I0(state__0[3]),
        .I1(CE),
        .I2(leds_OBUF[0]),
        .I3(out),
        .O(WE_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    WE_reg
       (.C(clk_50M_IBUF_BUFG),
        .CE(WE_i_1_n_0),
        .D(WE_i_2_n_0),
        .PRE(reset_btn_IBUF),
        .Q(base_ram_we_n_OBUF));
  LUT6 #(
    .INIT(64'hCFCCFF00FF00AFAA)) 
    continue_i_1
       (.I0(leds_OBUF[2]),
        .I1(leds_OBUF[1]),
        .I2(dpy0_OBUF),
        .I3(continue_reg_0),
        .I4(leds_OBUF[0]),
        .I5(out),
        .O(continue_reg));
  LUT4 #(
    .INIT(16'h4000)) 
    \data[15]_i_1 
       (.I0(reset_btn_IBUF),
        .I1(state__0[1]),
        .I2(leds_OBUF[0]),
        .I3(out),
        .O(p_0_in[31]));
  LUT5 #(
    .INIT(32'h0000C202)) 
    \data[7]_i_1 
       (.I0(CE),
        .I1(out),
        .I2(leds_OBUF[0]),
        .I3(state__0[1]),
        .I4(reset_btn_IBUF),
        .O(p_0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[7]),
        .D(\in_data_reg[15] [0]),
        .Q(\base_ram_data[15] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[31]),
        .D(\in_data_reg[15] [10]),
        .Q(\base_ram_data[15] [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[31]),
        .D(\in_data_reg[15] [11]),
        .Q(\base_ram_data[15] [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[31]),
        .D(\in_data_reg[15] [12]),
        .Q(\base_ram_data[15] [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[31]),
        .D(\in_data_reg[15] [13]),
        .Q(\base_ram_data[15] [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[7]),
        .D(\in_data_reg[15] [1]),
        .Q(\base_ram_data[15] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[7]),
        .D(\in_data_reg[15] [2]),
        .Q(\base_ram_data[15] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[7]),
        .D(\in_data_reg[15] [3]),
        .Q(\base_ram_data[15] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[7]),
        .D(\in_data_reg[15] [4]),
        .Q(\base_ram_data[15] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[7]),
        .D(\in_data_reg[15] [5]),
        .Q(\base_ram_data[15] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[7]),
        .D(\in_data_reg[15] [6]),
        .Q(\base_ram_data[15] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[7]),
        .D(\in_data_reg[15] [7]),
        .Q(\base_ram_data[15] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[31]),
        .D(\in_data_reg[15] [8]),
        .Q(\base_ram_data[15] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(p_0_in[31]),
        .D(\in_data_reg[15] [9]),
        .Q(\base_ram_data[15] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4000A000)) 
    \in_addr[0]_i_1 
       (.I0(\mid_reg_reg[1] ),
        .I1(continue_reg_0),
        .I2(dpy0_OBUF),
        .I3(leds_OBUF[0]),
        .I4(out),
        .O(\in_addr_reg[19] ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \in_data[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\mid_reg_reg[10] [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \in_data[10]_i_1 
       (.I0(Q[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\mid_reg_reg[10] [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \in_data[15]_i_1 
       (.I0(reset_btn_IBUF),
        .I1(dpy0_OBUF),
        .I2(leds_OBUF[0]),
        .I3(out),
        .O(\in_data_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \in_data[1]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\mid_reg_reg[10] [1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \in_data[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\mid_reg_reg[10] [2]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFF0010)) 
    \in_data[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\mid_reg_reg[10] [3]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \in_data[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\mid_reg_reg[10] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \in_data[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\mid_reg_reg[10] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \in_data[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\mid_reg_reg[10] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \in_data[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\mid_reg_reg[10] [7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \in_data[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\mid_reg_reg[10] [8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \in_data[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\mid_reg_reg[10] [9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \mid_reg[15]_i_1 
       (.I0(reset_btn_IBUF),
        .I1(dpy0_OBUF),
        .I2(leds_OBUF[0]),
        .I3(out),
        .O(E));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    rdn_i_1
       (.I0(CE),
        .I1(state__0[1]),
        .I2(success),
        .I3(leds_OBUF[0]),
        .I4(out),
        .O(rdn_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rdn_i_2
       (.I0(CE),
        .I1(success),
        .O(wrn));
  FDPE #(
    .INIT(1'b1)) 
    rdn_reg
       (.C(clk_50M_IBUF_BUFG),
        .CE(rdn_i_1_n_0),
        .D(wrn),
        .PRE(reset_btn_IBUF),
        .Q(uart_rdn_OBUF));
  LUT4 #(
    .INIT(16'h3808)) 
    \res[7]_i_1 
       (.I0(success),
        .I1(out),
        .I2(leds_OBUF[0]),
        .I3(state__0[3]),
        .O(\res[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(\res[7]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\data_reg[7]_0 [0]),
        .Q(\mid_reg_reg[10] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(\res[7]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\data_reg[7]_0 [1]),
        .Q(\mid_reg_reg[10] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(\res[7]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\data_reg[7]_0 [2]),
        .Q(\mid_reg_reg[10] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(\res[7]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\data_reg[7]_0 [3]),
        .Q(\mid_reg_reg[10] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(\res[7]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\data_reg[7]_0 [4]),
        .Q(\mid_reg_reg[10] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(\res[7]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\data_reg[7]_0 [5]),
        .Q(\mid_reg_reg[10] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(\res[7]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\data_reg[7]_0 [6]),
        .Q(\mid_reg_reg[10] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(\res[7]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\data_reg[7]_0 [7]),
        .Q(\mid_reg_reg[10] [7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h100F)) 
    \state[0]_i_1 
       (.I0(ctrl),
        .I1(\mid_reg_reg[10] [9]),
        .I2(\mid_reg_reg[10] [10]),
        .I3(\mid_reg_reg[10] [8]),
        .O(\state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \state[1]_i_1 
       (.I0(\mid_reg_reg[10] [10]),
        .I1(\mid_reg_reg[10] [9]),
        .I2(\mid_reg_reg[10] [8]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0430)) 
    \state[2]_i_1 
       (.I0(ctrl),
        .I1(\mid_reg_reg[10] [8]),
        .I2(\mid_reg_reg[10] [9]),
        .I3(\mid_reg_reg[10] [10]),
        .O(\state[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(state),
        .CLR(reset_btn_IBUF),
        .D(\state[0]_i_1_n_0 ),
        .Q(\mid_reg_reg[10] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(state),
        .CLR(reset_btn_IBUF),
        .D(\state[1]_i_1_n_0 ),
        .Q(\mid_reg_reg[10] [9]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(state),
        .CLR(reset_btn_IBUF),
        .D(\state[2]_i_1_n_0 ),
        .Q(\mid_reg_reg[10] [10]));
  LUT4 #(
    .INIT(16'hF7F0)) 
    success_i_1
       (.I0(state__0[3]),
        .I1(ctrl),
        .I2(success),
        .I3(dpy0_OBUF),
        .O(success_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    success_reg
       (.C(clk_50M_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(success_i_1_n_0),
        .Q(dpy0_OBUF));
  LUT5 #(
    .INIT(32'h11111110)) 
    wrn_i_1
       (.I0(leds_OBUF[0]),
        .I1(out),
        .I2(CE),
        .I3(state__0[1]),
        .I4(success),
        .O(wrn_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    wrn_reg
       (.C(clk_50M_IBUF_BUFG),
        .CE(wrn_i_1_n_0),
        .D(wrn),
        .PRE(reset_btn_IBUF),
        .Q(uart_wrn_OBUF));
endmodule

(* NotValidForBitStream *)
module thinpad_top
   (clk_50M,
    clk_11M0592,
    clock_btn,
    reset_btn,
    touch_btn,
    dip_sw,
    leds,
    dpy0,
    dpy1,
    uart_rdn,
    uart_wrn,
    uart_dataready,
    uart_tbre,
    uart_tsre,
    base_ram_data,
    base_ram_addr,
    base_ram_be_n,
    base_ram_ce_n,
    base_ram_oe_n,
    base_ram_we_n,
    ext_ram_data,
    ext_ram_addr,
    ext_ram_be_n,
    ext_ram_ce_n,
    ext_ram_oe_n,
    ext_ram_we_n,
    txd,
    rxd,
    flash_a,
    flash_d,
    flash_rp_n,
    flash_vpen,
    flash_ce_n,
    flash_oe_n,
    flash_we_n,
    flash_byte_n,
    sl811_a0,
    sl811_wr_n,
    sl811_rd_n,
    sl811_cs_n,
    sl811_rst_n,
    sl811_dack_n,
    sl811_intrq,
    sl811_drq_n,
    dm9k_cmd,
    dm9k_sd,
    dm9k_iow_n,
    dm9k_ior_n,
    dm9k_cs_n,
    dm9k_pwrst_n,
    dm9k_int,
    video_red,
    video_green,
    video_blue,
    video_hsync,
    video_vsync,
    video_clk,
    video_de);
  input clk_50M;
  input clk_11M0592;
  input clock_btn;
  input reset_btn;
  input [3:0]touch_btn;
  input [31:0]dip_sw;
  output [15:0]leds;
  output [7:0]dpy0;
  output [7:0]dpy1;
  output uart_rdn;
  output uart_wrn;
  input uart_dataready;
  input uart_tbre;
  input uart_tsre;
  inout [31:0]base_ram_data;
  output [19:0]base_ram_addr;
  output [3:0]base_ram_be_n;
  output base_ram_ce_n;
  output base_ram_oe_n;
  output base_ram_we_n;
  inout [31:0]ext_ram_data;
  output [19:0]ext_ram_addr;
  output [3:0]ext_ram_be_n;
  output ext_ram_ce_n;
  output ext_ram_oe_n;
  output ext_ram_we_n;
  output txd;
  input rxd;
  output [22:0]flash_a;
  inout [15:0]flash_d;
  output flash_rp_n;
  output flash_vpen;
  output flash_ce_n;
  output flash_oe_n;
  output flash_we_n;
  output flash_byte_n;
  output sl811_a0;
  output sl811_wr_n;
  output sl811_rd_n;
  output sl811_cs_n;
  output sl811_rst_n;
  output sl811_dack_n;
  input sl811_intrq;
  input sl811_drq_n;
  output dm9k_cmd;
  inout [15:0]dm9k_sd;
  output dm9k_iow_n;
  output dm9k_ior_n;
  output dm9k_cs_n;
  output dm9k_pwrst_n;
  input dm9k_int;
  output [2:0]video_red;
  output [2:0]video_green;
  output [1:0]video_blue;
  output video_hsync;
  output video_vsync;
  output video_clk;
  output video_de;

  wire [19:0]base_ram_addr;
  wire [19:0]base_ram_addr_OBUF;
  wire [3:0]base_ram_be_n;
  wire base_ram_ce_n;
  wire base_ram_ce_n_OBUF;
  wire [31:0]base_ram_data;
  wire [7:0]base_ram_data_IBUF;
  wire [15:0]base_ram_data_OBUF;
  wire \base_ram_data_OBUFT[30]_inst_i_2_n_0 ;
  wire \base_ram_data_TRI[0] ;
  wire base_ram_oe_n;
  wire base_ram_oe_n_OBUF;
  wire base_ram_we_n;
  wire base_ram_we_n_OBUF;
  wire clk_50M;
  wire clk_50M_IBUF;
  wire clk_50M_IBUF_BUFG;
  wire continue_reg_n_0;
  wire controller_n_10;
  wire controller_n_22;
  wire controller_n_23;
  wire controller_n_24;
  wire controller_n_25;
  wire controller_n_26;
  wire controller_n_27;
  wire controller_n_28;
  wire controller_n_29;
  wire controller_n_30;
  wire controller_n_31;
  wire controller_n_32;
  wire controller_n_33;
  wire controller_n_6;
  wire controller_n_7;
  wire controller_n_8;
  wire ctrl;
  wire dm9k_cmd;
  wire dm9k_cs_n;
  wire dm9k_ior_n;
  wire dm9k_iow_n;
  wire dm9k_pwrst_n;
  wire [7:0]dpy0;
  wire [7:7]dpy0_OBUF;
  wire [7:0]dpy1;
  wire [19:0]ext_ram_addr;
  wire [3:0]ext_ram_be_n;
  wire ext_ram_ce_n;
  wire ext_ram_oe_n;
  wire ext_ram_we_n;
  wire [22:0]flash_a;
  wire flash_byte_n;
  wire flash_ce_n;
  wire flash_oe_n;
  wire flash_rp_n;
  wire flash_vpen;
  wire flash_we_n;
  wire \in_addr[0]_i_3_n_0 ;
  wire \in_addr[0]_i_4_n_0 ;
  wire \in_addr[0]_i_5_n_0 ;
  wire \in_addr[0]_i_6_n_0 ;
  wire \in_addr[0]_i_7_n_0 ;
  wire \in_addr[0]_i_8_n_0 ;
  wire \in_addr[0]_i_9_n_0 ;
  wire \in_addr[12]_i_2_n_0 ;
  wire \in_addr[12]_i_3_n_0 ;
  wire \in_addr[12]_i_4_n_0 ;
  wire \in_addr[12]_i_5_n_0 ;
  wire \in_addr[12]_i_6_n_0 ;
  wire \in_addr[12]_i_7_n_0 ;
  wire \in_addr[12]_i_8_n_0 ;
  wire \in_addr[12]_i_9_n_0 ;
  wire \in_addr[16]_i_2_n_0 ;
  wire \in_addr[16]_i_3_n_0 ;
  wire \in_addr[16]_i_4_n_0 ;
  wire \in_addr[16]_i_5_n_0 ;
  wire \in_addr[16]_i_6_n_0 ;
  wire \in_addr[16]_i_7_n_0 ;
  wire \in_addr[16]_i_8_n_0 ;
  wire \in_addr[4]_i_2_n_0 ;
  wire \in_addr[4]_i_3_n_0 ;
  wire \in_addr[4]_i_4_n_0 ;
  wire \in_addr[4]_i_5_n_0 ;
  wire \in_addr[4]_i_6_n_0 ;
  wire \in_addr[4]_i_7_n_0 ;
  wire \in_addr[4]_i_8_n_0 ;
  wire \in_addr[4]_i_9_n_0 ;
  wire \in_addr[8]_i_2_n_0 ;
  wire \in_addr[8]_i_3_n_0 ;
  wire \in_addr[8]_i_4_n_0 ;
  wire \in_addr[8]_i_5_n_0 ;
  wire \in_addr[8]_i_6_n_0 ;
  wire \in_addr[8]_i_7_n_0 ;
  wire \in_addr[8]_i_8_n_0 ;
  wire \in_addr[8]_i_9_n_0 ;
  wire \in_addr_reg[0]_i_2_n_0 ;
  wire \in_addr_reg[0]_i_2_n_1 ;
  wire \in_addr_reg[0]_i_2_n_2 ;
  wire \in_addr_reg[0]_i_2_n_3 ;
  wire \in_addr_reg[0]_i_2_n_4 ;
  wire \in_addr_reg[0]_i_2_n_5 ;
  wire \in_addr_reg[0]_i_2_n_6 ;
  wire \in_addr_reg[0]_i_2_n_7 ;
  wire \in_addr_reg[12]_i_1_n_0 ;
  wire \in_addr_reg[12]_i_1_n_1 ;
  wire \in_addr_reg[12]_i_1_n_2 ;
  wire \in_addr_reg[12]_i_1_n_3 ;
  wire \in_addr_reg[12]_i_1_n_4 ;
  wire \in_addr_reg[12]_i_1_n_5 ;
  wire \in_addr_reg[12]_i_1_n_6 ;
  wire \in_addr_reg[12]_i_1_n_7 ;
  wire \in_addr_reg[16]_i_1_n_1 ;
  wire \in_addr_reg[16]_i_1_n_2 ;
  wire \in_addr_reg[16]_i_1_n_3 ;
  wire \in_addr_reg[16]_i_1_n_4 ;
  wire \in_addr_reg[16]_i_1_n_5 ;
  wire \in_addr_reg[16]_i_1_n_6 ;
  wire \in_addr_reg[16]_i_1_n_7 ;
  wire \in_addr_reg[4]_i_1_n_0 ;
  wire \in_addr_reg[4]_i_1_n_1 ;
  wire \in_addr_reg[4]_i_1_n_2 ;
  wire \in_addr_reg[4]_i_1_n_3 ;
  wire \in_addr_reg[4]_i_1_n_4 ;
  wire \in_addr_reg[4]_i_1_n_5 ;
  wire \in_addr_reg[4]_i_1_n_6 ;
  wire \in_addr_reg[4]_i_1_n_7 ;
  wire \in_addr_reg[8]_i_1_n_0 ;
  wire \in_addr_reg[8]_i_1_n_1 ;
  wire \in_addr_reg[8]_i_1_n_2 ;
  wire \in_addr_reg[8]_i_1_n_3 ;
  wire \in_addr_reg[8]_i_1_n_4 ;
  wire \in_addr_reg[8]_i_1_n_5 ;
  wire \in_addr_reg[8]_i_1_n_6 ;
  wire \in_addr_reg[8]_i_1_n_7 ;
  wire in_data;
  wire \in_data[13]_i_1_n_0 ;
  wire \in_data[14]_i_1_n_0 ;
  wire \in_data[14]_i_2_n_0 ;
  wire \in_data[15]_i_2_n_0 ;
  wire \in_data_reg_n_0_[0] ;
  wire \in_data_reg_n_0_[10] ;
  wire \in_data_reg_n_0_[13] ;
  wire \in_data_reg_n_0_[14] ;
  wire \in_data_reg_n_0_[15] ;
  wire \in_data_reg_n_0_[1] ;
  wire \in_data_reg_n_0_[2] ;
  wire \in_data_reg_n_0_[3] ;
  wire \in_data_reg_n_0_[4] ;
  wire \in_data_reg_n_0_[5] ;
  wire \in_data_reg_n_0_[6] ;
  wire \in_data_reg_n_0_[7] ;
  wire \in_data_reg_n_0_[8] ;
  wire \in_data_reg_n_0_[9] ;
  wire [15:0]leds;
  (* RTL_KEEP = "yes" *) wire [15:0]leds_OBUF;
  wire [15:4]mid_reg;
  wire \mid_reg_reg_n_0_[0] ;
  wire \mid_reg_reg_n_0_[1] ;
  wire \mid_reg_reg_n_0_[2] ;
  wire \mid_reg_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire [0:0]mode__0;
  wire reset_btn;
  wire reset_btn_IBUF;
  wire sl811_a0;
  wire sl811_cs_n;
  wire sl811_dack_n;
  wire sl811_rd_n;
  wire sl811_rst_n;
  wire sl811_wr_n;
  wire txd;
  wire uart_dataready;
  wire uart_rdn;
  wire uart_rdn_OBUF;
  wire uart_tbre;
  wire uart_tbre_IBUF;
  wire uart_tsre;
  wire uart_tsre_IBUF;
  wire uart_wrn;
  wire uart_wrn_OBUF;
  wire [1:0]video_blue;
  wire video_clk;
  wire video_de;
  wire [2:0]video_green;
  wire video_hsync;
  wire [2:0]video_red;
  wire video_vsync;
  wire [3:3]\NLW_in_addr_reg[16]_i_1_CO_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:11,iSTATE1:00,iSTATE2:10" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_mode_reg[0] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(controller_n_7),
        .Q(mode__0));
  (* FSM_ENCODED_STATES = "iSTATE:01,iSTATE0:11,iSTATE1:00,iSTATE2:10" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_mode_reg[1] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(controller_n_6),
        .Q(leds_OBUF[13]));
  OBUF \base_ram_addr_OBUF[0]_inst 
       (.I(base_ram_addr_OBUF[0]),
        .O(base_ram_addr[0]));
  OBUF \base_ram_addr_OBUF[10]_inst 
       (.I(base_ram_addr_OBUF[10]),
        .O(base_ram_addr[10]));
  OBUF \base_ram_addr_OBUF[11]_inst 
       (.I(base_ram_addr_OBUF[11]),
        .O(base_ram_addr[11]));
  OBUF \base_ram_addr_OBUF[12]_inst 
       (.I(base_ram_addr_OBUF[12]),
        .O(base_ram_addr[12]));
  OBUF \base_ram_addr_OBUF[13]_inst 
       (.I(base_ram_addr_OBUF[13]),
        .O(base_ram_addr[13]));
  OBUF \base_ram_addr_OBUF[14]_inst 
       (.I(base_ram_addr_OBUF[14]),
        .O(base_ram_addr[14]));
  OBUF \base_ram_addr_OBUF[15]_inst 
       (.I(base_ram_addr_OBUF[15]),
        .O(base_ram_addr[15]));
  OBUF \base_ram_addr_OBUF[16]_inst 
       (.I(base_ram_addr_OBUF[16]),
        .O(base_ram_addr[16]));
  OBUF \base_ram_addr_OBUF[17]_inst 
       (.I(base_ram_addr_OBUF[17]),
        .O(base_ram_addr[17]));
  OBUF \base_ram_addr_OBUF[18]_inst 
       (.I(base_ram_addr_OBUF[18]),
        .O(base_ram_addr[18]));
  OBUF \base_ram_addr_OBUF[19]_inst 
       (.I(base_ram_addr_OBUF[19]),
        .O(base_ram_addr[19]));
  OBUF \base_ram_addr_OBUF[1]_inst 
       (.I(base_ram_addr_OBUF[1]),
        .O(base_ram_addr[1]));
  OBUF \base_ram_addr_OBUF[2]_inst 
       (.I(base_ram_addr_OBUF[2]),
        .O(base_ram_addr[2]));
  OBUF \base_ram_addr_OBUF[3]_inst 
       (.I(base_ram_addr_OBUF[3]),
        .O(base_ram_addr[3]));
  OBUF \base_ram_addr_OBUF[4]_inst 
       (.I(base_ram_addr_OBUF[4]),
        .O(base_ram_addr[4]));
  OBUF \base_ram_addr_OBUF[5]_inst 
       (.I(base_ram_addr_OBUF[5]),
        .O(base_ram_addr[5]));
  OBUF \base_ram_addr_OBUF[6]_inst 
       (.I(base_ram_addr_OBUF[6]),
        .O(base_ram_addr[6]));
  OBUF \base_ram_addr_OBUF[7]_inst 
       (.I(base_ram_addr_OBUF[7]),
        .O(base_ram_addr[7]));
  OBUF \base_ram_addr_OBUF[8]_inst 
       (.I(base_ram_addr_OBUF[8]),
        .O(base_ram_addr[8]));
  OBUF \base_ram_addr_OBUF[9]_inst 
       (.I(base_ram_addr_OBUF[9]),
        .O(base_ram_addr[9]));
  OBUF \base_ram_be_n_OBUF[0]_inst 
       (.I(1'b0),
        .O(base_ram_be_n[0]));
  OBUF \base_ram_be_n_OBUF[1]_inst 
       (.I(1'b0),
        .O(base_ram_be_n[1]));
  OBUF \base_ram_be_n_OBUF[2]_inst 
       (.I(1'b0),
        .O(base_ram_be_n[2]));
  OBUF \base_ram_be_n_OBUF[3]_inst 
       (.I(1'b0),
        .O(base_ram_be_n[3]));
  OBUF base_ram_ce_n_OBUF_inst
       (.I(base_ram_ce_n_OBUF),
        .O(base_ram_ce_n));
  IOBUF \base_ram_data_IOBUF[0]_inst 
       (.I(base_ram_data_OBUF[0]),
        .IO(base_ram_data[0]),
        .O(base_ram_data_IBUF[0]),
        .T(\base_ram_data_TRI[0] ));
  IOBUF \base_ram_data_IOBUF[1]_inst 
       (.I(base_ram_data_OBUF[1]),
        .IO(base_ram_data[1]),
        .O(base_ram_data_IBUF[1]),
        .T(\base_ram_data_TRI[0] ));
  IOBUF \base_ram_data_IOBUF[2]_inst 
       (.I(base_ram_data_OBUF[2]),
        .IO(base_ram_data[2]),
        .O(base_ram_data_IBUF[2]),
        .T(\base_ram_data_TRI[0] ));
  IOBUF \base_ram_data_IOBUF[3]_inst 
       (.I(base_ram_data_OBUF[3]),
        .IO(base_ram_data[3]),
        .O(base_ram_data_IBUF[3]),
        .T(\base_ram_data_TRI[0] ));
  IOBUF \base_ram_data_IOBUF[4]_inst 
       (.I(base_ram_data_OBUF[4]),
        .IO(base_ram_data[4]),
        .O(base_ram_data_IBUF[4]),
        .T(\base_ram_data_TRI[0] ));
  IOBUF \base_ram_data_IOBUF[5]_inst 
       (.I(base_ram_data_OBUF[5]),
        .IO(base_ram_data[5]),
        .O(base_ram_data_IBUF[5]),
        .T(\base_ram_data_TRI[0] ));
  IOBUF \base_ram_data_IOBUF[6]_inst 
       (.I(base_ram_data_OBUF[6]),
        .IO(base_ram_data[6]),
        .O(base_ram_data_IBUF[6]),
        .T(\base_ram_data_TRI[0] ));
  IOBUF \base_ram_data_IOBUF[7]_inst 
       (.I(base_ram_data_OBUF[7]),
        .IO(base_ram_data[7]),
        .O(base_ram_data_IBUF[7]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[10]_inst 
       (.I(base_ram_data_OBUF[10]),
        .O(base_ram_data[10]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[11]_inst 
       (.I(1'b0),
        .O(base_ram_data[11]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[12]_inst 
       (.I(1'b1),
        .O(base_ram_data[12]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[13]_inst 
       (.I(base_ram_data_OBUF[13]),
        .O(base_ram_data[13]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[14]_inst 
       (.I(base_ram_data_OBUF[14]),
        .O(base_ram_data[14]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[15]_inst 
       (.I(base_ram_data_OBUF[15]),
        .O(base_ram_data[15]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[16]_inst 
       (.I(1'b0),
        .O(base_ram_data[16]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[17]_inst 
       (.I(1'b0),
        .O(base_ram_data[17]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[18]_inst 
       (.I(1'b0),
        .O(base_ram_data[18]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[19]_inst 
       (.I(1'b0),
        .O(base_ram_data[19]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[20]_inst 
       (.I(1'b0),
        .O(base_ram_data[20]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[21]_inst 
       (.I(1'b0),
        .O(base_ram_data[21]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[22]_inst 
       (.I(1'b0),
        .O(base_ram_data[22]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[23]_inst 
       (.I(1'b0),
        .O(base_ram_data[23]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[24]_inst 
       (.I(1'b0),
        .O(base_ram_data[24]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[25]_inst 
       (.I(1'b0),
        .O(base_ram_data[25]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[26]_inst 
       (.I(1'b0),
        .O(base_ram_data[26]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[27]_inst 
       (.I(1'b0),
        .O(base_ram_data[27]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[28]_inst 
       (.I(1'b0),
        .O(base_ram_data[28]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[29]_inst 
       (.I(1'b0),
        .O(base_ram_data[29]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[30]_inst 
       (.I(1'b0),
        .O(base_ram_data[30]),
        .T(\base_ram_data_TRI[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \base_ram_data_OBUFT[30]_inst_i_1 
       (.I0(\base_ram_data_OBUFT[30]_inst_i_2_n_0 ),
        .O(\base_ram_data_TRI[0] ));
  LUT2 #(
    .INIT(4'h9)) 
    \base_ram_data_OBUFT[30]_inst_i_2 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .O(\base_ram_data_OBUFT[30]_inst_i_2_n_0 ));
  OBUFT \base_ram_data_OBUFT[8]_inst 
       (.I(base_ram_data_OBUF[8]),
        .O(base_ram_data[8]),
        .T(\base_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[9]_inst 
       (.I(base_ram_data_OBUF[9]),
        .O(base_ram_data[9]),
        .T(\base_ram_data_TRI[0] ));
  OBUF \base_ram_data_OBUF[31]_inst 
       (.I(1'b0),
        .O(base_ram_data[31]));
  OBUF base_ram_oe_n_OBUF_inst
       (.I(base_ram_oe_n_OBUF),
        .O(base_ram_oe_n));
  OBUF base_ram_we_n_OBUF_inst
       (.I(base_ram_we_n_OBUF),
        .O(base_ram_we_n));
  BUFG clk_50M_IBUF_BUFG_inst
       (.I(clk_50M_IBUF),
        .O(clk_50M_IBUF_BUFG));
  IBUF clk_50M_IBUF_inst
       (.I(clk_50M),
        .O(clk_50M_IBUF));
  FDPE #(
    .INIT(1'b1)) 
    continue_reg
       (.C(clk_50M_IBUF_BUFG),
        .CE(1'b1),
        .D(controller_n_33),
        .PRE(reset_btn_IBUF),
        .Q(continue_reg_n_0));
  Ctrl_SRAM_UART controller
       (.D({controller_n_22,controller_n_23,controller_n_24,controller_n_25,controller_n_26,controller_n_27,controller_n_28,controller_n_29,controller_n_30,controller_n_31,controller_n_32}),
        .E(controller_n_8),
        .\FSM_sequential_mode_reg[0] (controller_n_7),
        .\FSM_sequential_mode_reg[1] (controller_n_6),
        .Q({mid_reg[10:4],\mid_reg_reg_n_0_[3] ,\mid_reg_reg_n_0_[2] ,\mid_reg_reg_n_0_[1] ,\mid_reg_reg_n_0_[0] }),
        .base_ram_ce_n_OBUF(base_ram_ce_n_OBUF),
        .\base_ram_data[15] ({base_ram_data_OBUF[15:13],base_ram_data_OBUF[10:0]}),
        .base_ram_oe_n_OBUF(base_ram_oe_n_OBUF),
        .base_ram_we_n_OBUF(base_ram_we_n_OBUF),
        .clk_50M_IBUF_BUFG(clk_50M_IBUF_BUFG),
        .continue_reg(controller_n_33),
        .continue_reg_0(continue_reg_n_0),
        .ctrl(ctrl),
        .\data_reg[7]_0 (base_ram_data_IBUF),
        .dpy0_OBUF(dpy0_OBUF),
        .in0({leds_OBUF[13],mode__0}),
        .\in_addr_reg[19] (controller_n_10),
        .\in_data_reg[0] (in_data),
        .\in_data_reg[15] ({\in_data_reg_n_0_[15] ,\in_data_reg_n_0_[14] ,\in_data_reg_n_0_[13] ,\in_data_reg_n_0_[10] ,\in_data_reg_n_0_[9] ,\in_data_reg_n_0_[8] ,\in_data_reg_n_0_[7] ,\in_data_reg_n_0_[6] ,\in_data_reg_n_0_[5] ,\in_data_reg_n_0_[4] ,\in_data_reg_n_0_[3] ,\in_data_reg_n_0_[2] ,\in_data_reg_n_0_[1] ,\in_data_reg_n_0_[0] }),
        .leds_OBUF(leds_OBUF[15:13]),
        .\mid_reg_reg[10] (leds_OBUF[10:0]),
        .\mid_reg_reg[1] (\in_data[14]_i_2_n_0 ),
        .out(mode__0),
        .reset_btn_IBUF(reset_btn_IBUF),
        .uart_rdn_OBUF(uart_rdn_OBUF),
        .uart_tbre_IBUF(uart_tbre_IBUF),
        .uart_tsre_IBUF(uart_tsre_IBUF),
        .uart_wrn_OBUF(uart_wrn_OBUF));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    ctrl_reg
       (.CLR(1'b0),
        .D(dpy0_OBUF),
        .G(continue_reg_n_0),
        .GE(1'b1),
        .Q(ctrl));
  OBUFT dm9k_cmd_OBUF_inst
       (.I(1'b0),
        .O(dm9k_cmd),
        .T(1'b1));
  OBUFT dm9k_cs_n_OBUF_inst
       (.I(1'b0),
        .O(dm9k_cs_n),
        .T(1'b1));
  OBUFT dm9k_ior_n_OBUF_inst
       (.I(1'b0),
        .O(dm9k_ior_n),
        .T(1'b1));
  OBUFT dm9k_iow_n_OBUF_inst
       (.I(1'b0),
        .O(dm9k_iow_n),
        .T(1'b1));
  OBUFT dm9k_pwrst_n_OBUF_inst
       (.I(1'b0),
        .O(dm9k_pwrst_n),
        .T(1'b1));
  OBUFT \dpy0_OBUF[0]_inst 
       (.I(1'b0),
        .O(dpy0[0]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[1]_inst 
       (.I(1'b0),
        .O(dpy0[1]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[2]_inst 
       (.I(1'b0),
        .O(dpy0[2]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[3]_inst 
       (.I(1'b0),
        .O(dpy0[3]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[4]_inst 
       (.I(1'b0),
        .O(dpy0[4]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[5]_inst 
       (.I(1'b0),
        .O(dpy0[5]),
        .T(1'b1));
  OBUFT \dpy0_OBUF[6]_inst 
       (.I(1'b0),
        .O(dpy0[6]),
        .T(1'b1));
  OBUF \dpy0_OBUF[7]_inst 
       (.I(dpy0_OBUF),
        .O(dpy0[7]));
  OBUFT \dpy1_OBUF[0]_inst 
       (.I(1'b0),
        .O(dpy1[0]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[1]_inst 
       (.I(1'b0),
        .O(dpy1[1]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[2]_inst 
       (.I(1'b0),
        .O(dpy1[2]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[3]_inst 
       (.I(1'b0),
        .O(dpy1[3]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[4]_inst 
       (.I(1'b0),
        .O(dpy1[4]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[5]_inst 
       (.I(1'b0),
        .O(dpy1[5]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[6]_inst 
       (.I(1'b0),
        .O(dpy1[6]),
        .T(1'b1));
  OBUFT \dpy1_OBUF[7]_inst 
       (.I(1'b0),
        .O(dpy1[7]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[0]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[0]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[10]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[10]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[11]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[11]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[12]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[12]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[13]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[13]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[14]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[14]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[15]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[15]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[16]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[16]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[17]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[17]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[18]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[18]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[19]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[19]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[1]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[1]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[2]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[2]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[3]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[3]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[4]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[4]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[5]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[5]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[6]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[6]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[7]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[7]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[8]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[8]),
        .T(1'b1));
  OBUFT \ext_ram_addr_OBUF[9]_inst 
       (.I(1'b0),
        .O(ext_ram_addr[9]),
        .T(1'b1));
  OBUFT \ext_ram_be_n_OBUF[0]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[0]),
        .T(1'b1));
  OBUFT \ext_ram_be_n_OBUF[1]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[1]),
        .T(1'b1));
  OBUFT \ext_ram_be_n_OBUF[2]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[2]),
        .T(1'b1));
  OBUFT \ext_ram_be_n_OBUF[3]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[3]),
        .T(1'b1));
  OBUFT ext_ram_ce_n_OBUF_inst
       (.I(1'b0),
        .O(ext_ram_ce_n),
        .T(1'b1));
  OBUFT ext_ram_oe_n_OBUF_inst
       (.I(1'b0),
        .O(ext_ram_oe_n),
        .T(1'b1));
  OBUFT ext_ram_we_n_OBUF_inst
       (.I(1'b0),
        .O(ext_ram_we_n),
        .T(1'b1));
  OBUFT \flash_a_OBUF[0]_inst 
       (.I(1'b0),
        .O(flash_a[0]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[10]_inst 
       (.I(1'b0),
        .O(flash_a[10]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[11]_inst 
       (.I(1'b0),
        .O(flash_a[11]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[12]_inst 
       (.I(1'b0),
        .O(flash_a[12]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[13]_inst 
       (.I(1'b0),
        .O(flash_a[13]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[14]_inst 
       (.I(1'b0),
        .O(flash_a[14]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[15]_inst 
       (.I(1'b0),
        .O(flash_a[15]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[16]_inst 
       (.I(1'b0),
        .O(flash_a[16]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[17]_inst 
       (.I(1'b0),
        .O(flash_a[17]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[18]_inst 
       (.I(1'b0),
        .O(flash_a[18]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[19]_inst 
       (.I(1'b0),
        .O(flash_a[19]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[1]_inst 
       (.I(1'b0),
        .O(flash_a[1]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[20]_inst 
       (.I(1'b0),
        .O(flash_a[20]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[21]_inst 
       (.I(1'b0),
        .O(flash_a[21]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[22]_inst 
       (.I(1'b0),
        .O(flash_a[22]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[2]_inst 
       (.I(1'b0),
        .O(flash_a[2]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[3]_inst 
       (.I(1'b0),
        .O(flash_a[3]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[4]_inst 
       (.I(1'b0),
        .O(flash_a[4]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[5]_inst 
       (.I(1'b0),
        .O(flash_a[5]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[6]_inst 
       (.I(1'b0),
        .O(flash_a[6]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[7]_inst 
       (.I(1'b0),
        .O(flash_a[7]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[8]_inst 
       (.I(1'b0),
        .O(flash_a[8]),
        .T(1'b1));
  OBUFT \flash_a_OBUF[9]_inst 
       (.I(1'b0),
        .O(flash_a[9]),
        .T(1'b1));
  OBUFT flash_byte_n_OBUF_inst
       (.I(1'b0),
        .O(flash_byte_n),
        .T(1'b1));
  OBUFT flash_ce_n_OBUF_inst
       (.I(1'b0),
        .O(flash_ce_n),
        .T(1'b1));
  OBUFT flash_oe_n_OBUF_inst
       (.I(1'b0),
        .O(flash_oe_n),
        .T(1'b1));
  OBUFT flash_rp_n_OBUF_inst
       (.I(1'b0),
        .O(flash_rp_n),
        .T(1'b1));
  OBUFT flash_vpen_OBUF_inst
       (.I(1'b0),
        .O(flash_vpen),
        .T(1'b1));
  OBUFT flash_we_n_OBUF_inst
       (.I(1'b0),
        .O(flash_we_n),
        .T(1'b1));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[0]_i_3 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[0]_i_4 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[0]_i_5 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[0]_i_6 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[3]),
        .O(\in_addr[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[0]_i_7 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[2]),
        .O(\in_addr[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[0]_i_8 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[1]),
        .O(\in_addr[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \in_addr[0]_i_9 
       (.I0(base_ram_addr_OBUF[0]),
        .O(\in_addr[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[12]_i_2 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[12]_i_3 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[12]_i_4 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[12]_i_5 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[12]_i_6 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[15]),
        .O(\in_addr[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[12]_i_7 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[14]),
        .O(\in_addr[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[12]_i_8 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[13]),
        .O(\in_addr[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[12]_i_9 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[12]),
        .O(\in_addr[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[16]_i_2 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[16]_i_3 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[16]_i_4 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[16]_i_5 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[19]),
        .O(\in_addr[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[16]_i_6 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[18]),
        .O(\in_addr[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[16]_i_7 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[17]),
        .O(\in_addr[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[16]_i_8 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[16]),
        .O(\in_addr[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[4]_i_2 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[4]_i_3 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[4]_i_4 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[4]_i_5 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[4]_i_6 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[7]),
        .O(\in_addr[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[4]_i_7 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[6]),
        .O(\in_addr[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[4]_i_8 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[5]),
        .O(\in_addr[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[4]_i_9 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[4]),
        .O(\in_addr[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[8]_i_2 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[8]_i_3 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[8]_i_4 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \in_addr[8]_i_5 
       (.I0(mode__0),
        .I1(leds_OBUF[13]),
        .O(\in_addr[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[8]_i_6 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[11]),
        .O(\in_addr[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[8]_i_7 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[10]),
        .O(\in_addr[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[8]_i_8 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[9]),
        .O(\in_addr[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \in_addr[8]_i_9 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .I2(base_ram_addr_OBUF[8]),
        .O(\in_addr[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[0] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[0]_i_2_n_7 ),
        .Q(base_ram_addr_OBUF[0]));
  CARRY4 \in_addr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\in_addr_reg[0]_i_2_n_0 ,\in_addr_reg[0]_i_2_n_1 ,\in_addr_reg[0]_i_2_n_2 ,\in_addr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\in_addr[0]_i_3_n_0 ,\in_addr[0]_i_4_n_0 ,\in_addr[0]_i_5_n_0 ,1'b1}),
        .O({\in_addr_reg[0]_i_2_n_4 ,\in_addr_reg[0]_i_2_n_5 ,\in_addr_reg[0]_i_2_n_6 ,\in_addr_reg[0]_i_2_n_7 }),
        .S({\in_addr[0]_i_6_n_0 ,\in_addr[0]_i_7_n_0 ,\in_addr[0]_i_8_n_0 ,\in_addr[0]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[10] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[8]_i_1_n_5 ),
        .Q(base_ram_addr_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[11] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[8]_i_1_n_4 ),
        .Q(base_ram_addr_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[12] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[12]_i_1_n_7 ),
        .Q(base_ram_addr_OBUF[12]));
  CARRY4 \in_addr_reg[12]_i_1 
       (.CI(\in_addr_reg[8]_i_1_n_0 ),
        .CO({\in_addr_reg[12]_i_1_n_0 ,\in_addr_reg[12]_i_1_n_1 ,\in_addr_reg[12]_i_1_n_2 ,\in_addr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\in_addr[12]_i_2_n_0 ,\in_addr[12]_i_3_n_0 ,\in_addr[12]_i_4_n_0 ,\in_addr[12]_i_5_n_0 }),
        .O({\in_addr_reg[12]_i_1_n_4 ,\in_addr_reg[12]_i_1_n_5 ,\in_addr_reg[12]_i_1_n_6 ,\in_addr_reg[12]_i_1_n_7 }),
        .S({\in_addr[12]_i_6_n_0 ,\in_addr[12]_i_7_n_0 ,\in_addr[12]_i_8_n_0 ,\in_addr[12]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[13] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[12]_i_1_n_6 ),
        .Q(base_ram_addr_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[14] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[12]_i_1_n_5 ),
        .Q(base_ram_addr_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[15] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[12]_i_1_n_4 ),
        .Q(base_ram_addr_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[16] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[16]_i_1_n_7 ),
        .Q(base_ram_addr_OBUF[16]));
  CARRY4 \in_addr_reg[16]_i_1 
       (.CI(\in_addr_reg[12]_i_1_n_0 ),
        .CO({\NLW_in_addr_reg[16]_i_1_CO_UNCONNECTED [3],\in_addr_reg[16]_i_1_n_1 ,\in_addr_reg[16]_i_1_n_2 ,\in_addr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\in_addr[16]_i_2_n_0 ,\in_addr[16]_i_3_n_0 ,\in_addr[16]_i_4_n_0 }),
        .O({\in_addr_reg[16]_i_1_n_4 ,\in_addr_reg[16]_i_1_n_5 ,\in_addr_reg[16]_i_1_n_6 ,\in_addr_reg[16]_i_1_n_7 }),
        .S({\in_addr[16]_i_5_n_0 ,\in_addr[16]_i_6_n_0 ,\in_addr[16]_i_7_n_0 ,\in_addr[16]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[17] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[16]_i_1_n_6 ),
        .Q(base_ram_addr_OBUF[17]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[18] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[16]_i_1_n_5 ),
        .Q(base_ram_addr_OBUF[18]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[19] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[16]_i_1_n_4 ),
        .Q(base_ram_addr_OBUF[19]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[1] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[0]_i_2_n_6 ),
        .Q(base_ram_addr_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[2] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[0]_i_2_n_5 ),
        .Q(base_ram_addr_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[3] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[0]_i_2_n_4 ),
        .Q(base_ram_addr_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[4] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[4]_i_1_n_7 ),
        .Q(base_ram_addr_OBUF[4]));
  CARRY4 \in_addr_reg[4]_i_1 
       (.CI(\in_addr_reg[0]_i_2_n_0 ),
        .CO({\in_addr_reg[4]_i_1_n_0 ,\in_addr_reg[4]_i_1_n_1 ,\in_addr_reg[4]_i_1_n_2 ,\in_addr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\in_addr[4]_i_2_n_0 ,\in_addr[4]_i_3_n_0 ,\in_addr[4]_i_4_n_0 ,\in_addr[4]_i_5_n_0 }),
        .O({\in_addr_reg[4]_i_1_n_4 ,\in_addr_reg[4]_i_1_n_5 ,\in_addr_reg[4]_i_1_n_6 ,\in_addr_reg[4]_i_1_n_7 }),
        .S({\in_addr[4]_i_6_n_0 ,\in_addr[4]_i_7_n_0 ,\in_addr[4]_i_8_n_0 ,\in_addr[4]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[5] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[4]_i_1_n_6 ),
        .Q(base_ram_addr_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[6] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[4]_i_1_n_5 ),
        .Q(base_ram_addr_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[7] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[4]_i_1_n_4 ),
        .Q(base_ram_addr_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[8] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[8]_i_1_n_7 ),
        .Q(base_ram_addr_OBUF[8]));
  CARRY4 \in_addr_reg[8]_i_1 
       (.CI(\in_addr_reg[4]_i_1_n_0 ),
        .CO({\in_addr_reg[8]_i_1_n_0 ,\in_addr_reg[8]_i_1_n_1 ,\in_addr_reg[8]_i_1_n_2 ,\in_addr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\in_addr[8]_i_2_n_0 ,\in_addr[8]_i_3_n_0 ,\in_addr[8]_i_4_n_0 ,\in_addr[8]_i_5_n_0 }),
        .O({\in_addr_reg[8]_i_1_n_4 ,\in_addr_reg[8]_i_1_n_5 ,\in_addr_reg[8]_i_1_n_6 ,\in_addr_reg[8]_i_1_n_7 }),
        .S({\in_addr[8]_i_6_n_0 ,\in_addr[8]_i_7_n_0 ,\in_addr[8]_i_8_n_0 ,\in_addr[8]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \in_addr_reg[9] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_10),
        .CLR(reset_btn_IBUF),
        .D(\in_addr_reg[8]_i_1_n_6 ),
        .Q(base_ram_addr_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \in_data[13]_i_1 
       (.I0(mid_reg[13]),
        .I1(\mid_reg_reg_n_0_[1] ),
        .I2(\mid_reg_reg_n_0_[0] ),
        .I3(\mid_reg_reg_n_0_[3] ),
        .I4(\mid_reg_reg_n_0_[2] ),
        .O(\in_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \in_data[14]_i_1 
       (.I0(mid_reg[14]),
        .I1(\in_data[14]_i_2_n_0 ),
        .I2(uart_tsre_IBUF),
        .I3(uart_tbre_IBUF),
        .O(\in_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \in_data[14]_i_2 
       (.I0(\mid_reg_reg_n_0_[1] ),
        .I1(\mid_reg_reg_n_0_[0] ),
        .I2(\mid_reg_reg_n_0_[3] ),
        .I3(\mid_reg_reg_n_0_[2] ),
        .O(\in_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \in_data[15]_i_2 
       (.I0(mid_reg[15]),
        .I1(\mid_reg_reg_n_0_[1] ),
        .I2(\mid_reg_reg_n_0_[0] ),
        .I3(\mid_reg_reg_n_0_[3] ),
        .I4(\mid_reg_reg_n_0_[2] ),
        .I5(leds_OBUF[15]),
        .O(\in_data[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[0] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_32),
        .Q(\in_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[10] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_22),
        .Q(\in_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[13] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(\in_data[13]_i_1_n_0 ),
        .Q(\in_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[14] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(\in_data[14]_i_1_n_0 ),
        .Q(\in_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[15] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(\in_data[15]_i_2_n_0 ),
        .Q(\in_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[1] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_31),
        .Q(\in_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[2] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_30),
        .Q(\in_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[3] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_29),
        .Q(\in_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[4] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_28),
        .Q(\in_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[5] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_27),
        .Q(\in_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[6] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_26),
        .Q(\in_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[7] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_25),
        .Q(\in_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[8] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_24),
        .Q(\in_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_reg[9] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(in_data),
        .D(controller_n_23),
        .Q(\in_data_reg_n_0_[9] ),
        .R(1'b0));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[10]_inst 
       (.I(leds_OBUF[10]),
        .O(leds[10]));
  OBUF \leds_OBUF[11]_inst 
       (.I(1'b0),
        .O(leds[11]));
  OBUF \leds_OBUF[12]_inst 
       (.I(leds_OBUF[12]),
        .O(leds[12]));
  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[12]_inst_i_1 
       (.I0(leds_OBUF[13]),
        .I1(mode__0),
        .O(leds_OBUF[12]));
  OBUF \leds_OBUF[13]_inst 
       (.I(leds_OBUF[13]),
        .O(leds[13]));
  OBUF \leds_OBUF[14]_inst 
       (.I(leds_OBUF[14]),
        .O(leds[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \leds_OBUF[14]_inst_i_1 
       (.I0(uart_tsre_IBUF),
        .I1(uart_tbre_IBUF),
        .O(leds_OBUF[14]));
  OBUF \leds_OBUF[15]_inst 
       (.I(leds_OBUF[15]),
        .O(leds[15]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  OBUF \leds_OBUF[4]_inst 
       (.I(leds_OBUF[4]),
        .O(leds[4]));
  OBUF \leds_OBUF[5]_inst 
       (.I(leds_OBUF[5]),
        .O(leds[5]));
  OBUF \leds_OBUF[6]_inst 
       (.I(leds_OBUF[6]),
        .O(leds[6]));
  OBUF \leds_OBUF[7]_inst 
       (.I(leds_OBUF[7]),
        .O(leds[7]));
  OBUF \leds_OBUF[8]_inst 
       (.I(leds_OBUF[8]),
        .O(leds[8]));
  OBUF \leds_OBUF[9]_inst 
       (.I(leds_OBUF[9]),
        .O(leds[9]));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[0] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[0]),
        .Q(\mid_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[10] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[10]),
        .Q(mid_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[13] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[13]),
        .Q(mid_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[14] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[14]),
        .Q(mid_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[15] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[15]),
        .Q(mid_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[1] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[1]),
        .Q(\mid_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[2] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[2]),
        .Q(\mid_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[3] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[3]),
        .Q(\mid_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[4] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[4]),
        .Q(mid_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[5] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[5]),
        .Q(mid_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[6] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[6]),
        .Q(mid_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[7] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[7]),
        .Q(mid_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[8] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[8]),
        .Q(mid_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mid_reg_reg[9] 
       (.C(clk_50M_IBUF_BUFG),
        .CE(controller_n_8),
        .D(leds_OBUF[9]),
        .Q(mid_reg[9]),
        .R(1'b0));
  IBUF reset_btn_IBUF_inst
       (.I(reset_btn),
        .O(reset_btn_IBUF));
  OBUFT sl811_a0_OBUF_inst
       (.I(1'b0),
        .O(sl811_a0),
        .T(1'b1));
  OBUFT sl811_cs_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_cs_n),
        .T(1'b1));
  OBUFT sl811_dack_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_dack_n),
        .T(1'b1));
  OBUFT sl811_rd_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_rd_n),
        .T(1'b1));
  OBUFT sl811_rst_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_rst_n),
        .T(1'b1));
  OBUFT sl811_wr_n_OBUF_inst
       (.I(1'b0),
        .O(sl811_wr_n),
        .T(1'b1));
  OBUFT txd_OBUF_inst
       (.I(1'b0),
        .O(txd),
        .T(1'b1));
  IBUF uart_dataready_IBUF_inst
       (.I(uart_dataready),
        .O(leds_OBUF[15]));
  OBUF uart_rdn_OBUF_inst
       (.I(uart_rdn_OBUF),
        .O(uart_rdn));
  IBUF uart_tbre_IBUF_inst
       (.I(uart_tbre),
        .O(uart_tbre_IBUF));
  IBUF uart_tsre_IBUF_inst
       (.I(uart_tsre),
        .O(uart_tsre_IBUF));
  OBUF uart_wrn_OBUF_inst
       (.I(uart_wrn_OBUF),
        .O(uart_wrn));
  OBUFT \video_blue_OBUF[0]_inst 
       (.I(1'b0),
        .O(video_blue[0]),
        .T(1'b1));
  OBUFT \video_blue_OBUF[1]_inst 
       (.I(1'b0),
        .O(video_blue[1]),
        .T(1'b1));
  OBUFT video_clk_OBUF_inst
       (.I(1'b0),
        .O(video_clk),
        .T(1'b1));
  OBUFT video_de_OBUF_inst
       (.I(1'b0),
        .O(video_de),
        .T(1'b1));
  OBUFT \video_green_OBUF[0]_inst 
       (.I(1'b0),
        .O(video_green[0]),
        .T(1'b1));
  OBUFT \video_green_OBUF[1]_inst 
       (.I(1'b0),
        .O(video_green[1]),
        .T(1'b1));
  OBUFT \video_green_OBUF[2]_inst 
       (.I(1'b0),
        .O(video_green[2]),
        .T(1'b1));
  OBUFT video_hsync_OBUF_inst
       (.I(1'b0),
        .O(video_hsync),
        .T(1'b1));
  OBUFT \video_red_OBUF[0]_inst 
       (.I(1'b0),
        .O(video_red[0]),
        .T(1'b1));
  OBUFT \video_red_OBUF[1]_inst 
       (.I(1'b0),
        .O(video_red[1]),
        .T(1'b1));
  OBUFT \video_red_OBUF[2]_inst 
       (.I(1'b0),
        .O(video_red[2]),
        .T(1'b1));
  OBUFT video_vsync_OBUF_inst
       (.I(1'b0),
        .O(video_vsync),
        .T(1'b1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
