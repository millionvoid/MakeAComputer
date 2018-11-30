// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec  1 01:10:06 2018
// Host        : SKY-20170207CJV running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Xilinx_pro/MakeAComputer/thinpad_top/thinpad_top.sim/sim_1/synth/func/xsim/tb_func_synth.v
// Design      : thinpad_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CPU
   (leds_OBUF,
    PC_reg,
    S,
    \FSM_sequential_state_reg[1] ,
    reset_btn_IBUF);
  output [12:0]leds_OBUF;
  output [6:0]PC_reg;
  output [0:0]S;
  input [0:0]\FSM_sequential_state_reg[1] ;
  input reset_btn_IBUF;

  wire [0:0]\FSM_sequential_state_reg[1] ;
  wire [6:0]PC_reg;
  wire [0:0]S;
  wire [12:0]leds_OBUF;
  wire reset_btn_IBUF;

  RegPC RegPC_c
       (.\FSM_sequential_state_reg[1] (\FSM_sequential_state_reg[1] ),
        .PC_reg(PC_reg),
        .S(S),
        .leds_OBUF(leds_OBUF),
        .reset_btn_IBUF(reset_btn_IBUF));
endmodule

module Ctrl_SRAM_UART
   (uart_rdn_OBUF,
    uart_wrn_OBUF,
    base_ram_ce_n_OBUF,
    base_ram_oe_n_OBUF,
    base_ram_we_n_OBUF,
    ext_ram_ce_n_OBUF,
    ext_ram_oe_n_OBUF,
    ext_ram_we_n_OBUF,
    ctrl_reg,
    \FSM_sequential_state_reg[2] ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[0] ,
    clock_btn_IBUF_BUFG,
    reset_btn_IBUF,
    out,
    ctrl_reg_0,
    \mode_reg[2] ,
    out_data,
    in0,
    \mode_reg[0] );
  output uart_rdn_OBUF;
  output uart_wrn_OBUF;
  output base_ram_ce_n_OBUF;
  output base_ram_oe_n_OBUF;
  output base_ram_we_n_OBUF;
  output ext_ram_ce_n_OBUF;
  output ext_ram_oe_n_OBUF;
  output ext_ram_we_n_OBUF;
  output ctrl_reg;
  output \FSM_sequential_state_reg[2] ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[0] ;
  input clock_btn_IBUF_BUFG;
  input reset_btn_IBUF;
  input [2:0]out;
  input ctrl_reg_0;
  input \mode_reg[2] ;
  input [0:0]out_data;
  input [2:0]in0;
  input \mode_reg[0] ;

  (* RTL_KEEP = "yes" *) wire CE;
  wire CE_i_2_n_0;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[2] ;
  wire OE_i_1_n_0;
  wire OE_i_2_n_0;
  wire WE_i_1_n_0;
  wire WE_i_2_n_0;
  wire base_ram_ce_n_OBUF;
  wire base_ram_oe_n_OBUF;
  wire base_ram_we_n_OBUF;
  wire clock_btn_IBUF_BUFG;
  wire ctrl_reg;
  wire ctrl_reg_0;
  wire ext_CE;
  wire ext_CE_i_1_n_0;
  wire ext_OE_i_1_n_0;
  wire ext_OE_i_2_n_0;
  wire ext_WE_i_1_n_0;
  wire ext_WE_i_2_n_0;
  wire ext_ram_ce_n_OBUF;
  wire ext_ram_oe_n_OBUF;
  wire ext_ram_we_n_OBUF;
  wire [2:0]in0;
  wire \mode_reg[0] ;
  wire \mode_reg[2] ;
  wire [2:0]out;
  wire [0:0]out_data;
  wire rdn_i_1_n_0;
  wire reset_btn_IBUF;
  (* RTL_KEEP = "yes" *) wire [3:1]state__0;
  wire succ;
  (* RTL_KEEP = "yes" *) wire success;
  wire success_i_1_n_0;
  wire uart_rdn_OBUF;
  wire uart_wrn_OBUF;
  wire wrn;
  wire wrn_i_1_n_0;

  LUT3 #(
    .INIT(8'hA2)) 
    CE_i_1
       (.I0(CE),
        .I1(\mode_reg[2] ),
        .I2(out_data),
        .O(ext_CE));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    CE_i_2
       (.I0(\mode_reg[2] ),
        .I1(out_data),
        .O(CE_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    CE_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(ext_CE),
        .D(CE_i_2_n_0),
        .PRE(reset_btn_IBUF),
        .Q(base_ram_ce_n_OBUF));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(state__0[3]),
        .I1(ctrl_reg_0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBA00000000)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(state__0[1]),
        .I1(ctrl_reg_0),
        .I2(CE),
        .I3(state__0[3]),
        .I4(success),
        .I5(\FSM_onehot_state[3]_i_3_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(success),
        .I1(ctrl_reg_0),
        .I2(state__0[3]),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(out_data),
        .I1(\mode_reg[2] ),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(reset_btn_IBUF),
        .Q(CE));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(CE),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(state__0[1]),
        .Q(success));
  (* FSM_ENCODED_STATES = "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .CLR(reset_btn_IBUF),
        .D(\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(state__0[3]));
  LUT5 #(
    .INIT(32'hACFF004D)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(out[1]),
        .I1(succ),
        .I2(out[2]),
        .I3(out[0]),
        .I4(in0[0]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT5 #(
    .INIT(32'hADBF010D)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(out[1]),
        .I1(succ),
        .I2(out[2]),
        .I3(out[0]),
        .I4(in0[1]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT5 #(
    .INIT(32'hAEF20240)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(out[1]),
        .I1(succ),
        .I2(out[2]),
        .I3(out[0]),
        .I4(in0[2]),
        .O(\FSM_sequential_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFF000000FFFFE000)) 
    OE_i_1
       (.I0(state__0[1]),
        .I1(success),
        .I2(\mode_reg[0] ),
        .I3(out_data),
        .I4(CE),
        .I5(\mode_reg[2] ),
        .O(OE_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    OE_i_2
       (.I0(\mode_reg[0] ),
        .I1(out_data),
        .I2(CE),
        .I3(success),
        .I4(\mode_reg[2] ),
        .O(OE_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    OE_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(OE_i_1_n_0),
        .D(OE_i_2_n_0),
        .PRE(reset_btn_IBUF),
        .Q(base_ram_oe_n_OBUF));
  LUT6 #(
    .INIT(64'hFF000000FFFF5400)) 
    WE_i_1
       (.I0(\mode_reg[0] ),
        .I1(success),
        .I2(state__0[3]),
        .I3(out_data),
        .I4(CE),
        .I5(\mode_reg[2] ),
        .O(WE_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    WE_i_2
       (.I0(out_data),
        .I1(\mode_reg[2] ),
        .I2(\mode_reg[0] ),
        .I3(CE),
        .I4(state__0[3]),
        .O(WE_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    WE_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(WE_i_1_n_0),
        .D(WE_i_2_n_0),
        .PRE(reset_btn_IBUF),
        .Q(base_ram_we_n_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFAF900005000)) 
    ctrl_i_1
       (.I0(out[2]),
        .I1(out[1]),
        .I2(succ),
        .I3(out[0]),
        .I4(reset_btn_IBUF),
        .I5(ctrl_reg_0),
        .O(ctrl_reg));
  LUT1 #(
    .INIT(2'h1)) 
    ext_CE_i_1
       (.I0(\mode_reg[2] ),
        .O(ext_CE_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ext_CE_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(ext_CE),
        .D(ext_CE_i_1_n_0),
        .PRE(reset_btn_IBUF),
        .Q(ext_ram_ce_n_OBUF));
  LUT6 #(
    .INIT(64'hFF00FFFFE0000000)) 
    ext_OE_i_1
       (.I0(state__0[1]),
        .I1(success),
        .I2(\mode_reg[0] ),
        .I3(out_data),
        .I4(\mode_reg[2] ),
        .I5(CE),
        .O(ext_OE_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF7F)) 
    ext_OE_i_2
       (.I0(\mode_reg[0] ),
        .I1(\mode_reg[2] ),
        .I2(out_data),
        .I3(CE),
        .I4(success),
        .O(ext_OE_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ext_OE_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(ext_OE_i_1_n_0),
        .D(ext_OE_i_2_n_0),
        .PRE(reset_btn_IBUF),
        .Q(ext_ram_oe_n_OBUF));
  LUT6 #(
    .INIT(64'hFF00FFFF54000000)) 
    ext_WE_i_1
       (.I0(\mode_reg[0] ),
        .I1(success),
        .I2(state__0[3]),
        .I3(out_data),
        .I4(\mode_reg[2] ),
        .I5(CE),
        .O(ext_WE_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    ext_WE_i_2
       (.I0(out_data),
        .I1(\mode_reg[2] ),
        .I2(\mode_reg[0] ),
        .I3(CE),
        .I4(state__0[3]),
        .O(ext_WE_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ext_WE_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(ext_WE_i_1_n_0),
        .D(ext_WE_i_2_n_0),
        .PRE(reset_btn_IBUF),
        .Q(ext_ram_we_n_OBUF));
  LUT6 #(
    .INIT(64'h1010101010101000)) 
    rdn_i_1
       (.I0(out_data),
        .I1(\mode_reg[2] ),
        .I2(\mode_reg[0] ),
        .I3(state__0[1]),
        .I4(CE),
        .I5(success),
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
       (.C(clock_btn_IBUF_BUFG),
        .CE(rdn_i_1_n_0),
        .D(wrn),
        .PRE(reset_btn_IBUF),
        .Q(uart_rdn_OBUF));
  LUT6 #(
    .INIT(64'hF7F7FFF7F0F000F0)) 
    success_i_1
       (.I0(state__0[3]),
        .I1(ctrl_reg_0),
        .I2(success),
        .I3(\mode_reg[2] ),
        .I4(out_data),
        .I5(succ),
        .O(success_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    success_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(success_i_1_n_0),
        .Q(succ));
  LUT6 #(
    .INIT(64'h0000000011111110)) 
    wrn_i_1
       (.I0(\mode_reg[0] ),
        .I1(\mode_reg[2] ),
        .I2(state__0[1]),
        .I3(CE),
        .I4(success),
        .I5(out_data),
        .O(wrn_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    wrn_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(wrn_i_1_n_0),
        .D(wrn),
        .PRE(reset_btn_IBUF),
        .Q(uart_wrn_OBUF));
endmodule

module Memory
   (uart_rdn_OBUF,
    uart_wrn_OBUF,
    base_ram_ce_n_OBUF,
    base_ram_oe_n_OBUF,
    base_ram_we_n_OBUF,
    ext_ram_ce_n_OBUF,
    ext_ram_oe_n_OBUF,
    ext_ram_we_n_OBUF,
    \PC_reg[2] ,
    \ext_ram_data_TRI[0] ,
    ext_ram_addr_OBUF,
    clock_btn_IBUF_BUFG,
    reset_btn_IBUF,
    S,
    PC_reg,
    leds_OBUF);
  output uart_rdn_OBUF;
  output uart_wrn_OBUF;
  output base_ram_ce_n_OBUF;
  output base_ram_oe_n_OBUF;
  output base_ram_we_n_OBUF;
  output ext_ram_ce_n_OBUF;
  output ext_ram_oe_n_OBUF;
  output ext_ram_we_n_OBUF;
  output [0:0]\PC_reg[2] ;
  output \ext_ram_data_TRI[0] ;
  output [19:0]ext_ram_addr_OBUF;
  input clock_btn_IBUF_BUFG;
  input reset_btn_IBUF;
  input [0:0]S;
  input [6:0]PC_reg;
  input [12:0]leds_OBUF;

  wire [6:0]PC_reg;
  wire [0:0]\PC_reg[2] ;
  wire [0:0]S;
  wire base_ram_ce_n_OBUF;
  wire base_ram_oe_n_OBUF;
  wire base_ram_we_n_OBUF;
  wire clock_btn_IBUF_BUFG;
  wire controller_n_10;
  wire controller_n_11;
  wire controller_n_8;
  wire controller_n_9;
  wire ctrl_reg_n_0;
  wire [19:0]ext_ram_addr_OBUF;
  wire ext_ram_ce_n_OBUF;
  wire \ext_ram_data_TRI[0] ;
  wire ext_ram_oe_n_OBUF;
  wire ext_ram_we_n_OBUF;
  wire \in_addr[19]_i_1_n_0 ;
  wire \in_addr[19]_i_2_n_0 ;
  wire [12:0]leds_OBUF;
  wire \mode[0]_i_1_n_0 ;
  wire \mode[1]_i_1_n_0 ;
  wire \mode[2]_i_1_n_0 ;
  wire \mode_reg_n_0_[2] ;
  wire [13:13]out_data;
  wire reset_btn_IBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire uart_rdn_OBUF;
  wire uart_wrn_OBUF;

  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:100,iSTATE1:101,iSTATE2:001,iSTATE3:011,iSTATE4:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(controller_n_11),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:100,iSTATE1:101,iSTATE2:001,iSTATE3:011,iSTATE4:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(controller_n_10),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:100,iSTATE1:101,iSTATE2:001,iSTATE3:011,iSTATE4:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(controller_n_9),
        .Q(state[2]));
  LUT3 #(
    .INIT(8'h01)) 
    \__21/i_ 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\PC_reg[2] ));
  Ctrl_SRAM_UART controller
       (.\FSM_sequential_state_reg[0] (controller_n_11),
        .\FSM_sequential_state_reg[1] (controller_n_10),
        .\FSM_sequential_state_reg[2] (controller_n_9),
        .base_ram_ce_n_OBUF(base_ram_ce_n_OBUF),
        .base_ram_oe_n_OBUF(base_ram_oe_n_OBUF),
        .base_ram_we_n_OBUF(base_ram_we_n_OBUF),
        .clock_btn_IBUF_BUFG(clock_btn_IBUF_BUFG),
        .ctrl_reg(controller_n_8),
        .ctrl_reg_0(ctrl_reg_n_0),
        .ext_ram_ce_n_OBUF(ext_ram_ce_n_OBUF),
        .ext_ram_oe_n_OBUF(ext_ram_oe_n_OBUF),
        .ext_ram_we_n_OBUF(ext_ram_we_n_OBUF),
        .in0(state),
        .\mode_reg[0] (\ext_ram_data_TRI[0] ),
        .\mode_reg[2] (\mode_reg_n_0_[2] ),
        .out(state),
        .out_data(out_data),
        .reset_btn_IBUF(reset_btn_IBUF),
        .uart_rdn_OBUF(uart_rdn_OBUF),
        .uart_wrn_OBUF(uart_wrn_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_reg
       (.C(clock_btn_IBUF_BUFG),
        .CE(1'b1),
        .D(controller_n_8),
        .Q(ctrl_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    \in_addr[19]_i_1 
       (.I0(reset_btn_IBUF),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\in_addr[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \in_addr[19]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(reset_btn_IBUF),
        .O(\in_addr[19]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[0] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[0]),
        .Q(ext_ram_addr_OBUF[0]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[10] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[10]),
        .Q(ext_ram_addr_OBUF[10]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[11] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[11]),
        .Q(ext_ram_addr_OBUF[11]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[12] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[12]),
        .Q(ext_ram_addr_OBUF[12]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[13] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(PC_reg[0]),
        .Q(ext_ram_addr_OBUF[13]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[14] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(PC_reg[1]),
        .Q(ext_ram_addr_OBUF[14]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[15] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(PC_reg[2]),
        .Q(ext_ram_addr_OBUF[15]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[16] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(PC_reg[3]),
        .Q(ext_ram_addr_OBUF[16]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[17] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(PC_reg[4]),
        .Q(ext_ram_addr_OBUF[17]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[18] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(PC_reg[5]),
        .Q(ext_ram_addr_OBUF[18]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[19] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(PC_reg[6]),
        .Q(ext_ram_addr_OBUF[19]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[1] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[1]),
        .Q(ext_ram_addr_OBUF[1]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[2] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[2]),
        .Q(ext_ram_addr_OBUF[2]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[3] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[3]),
        .Q(ext_ram_addr_OBUF[3]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[4] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[4]),
        .Q(ext_ram_addr_OBUF[4]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[5] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[5]),
        .Q(ext_ram_addr_OBUF[5]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[6] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[6]),
        .Q(ext_ram_addr_OBUF[6]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[7] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[7]),
        .Q(ext_ram_addr_OBUF[7]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[8] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[8]),
        .Q(ext_ram_addr_OBUF[8]),
        .R(\in_addr[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_addr_reg[9] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(\in_addr[19]_i_2_n_0 ),
        .D(leds_OBUF[9]),
        .Q(ext_ram_addr_OBUF[9]),
        .R(\in_addr[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \mode[0]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(reset_btn_IBUF),
        .I4(\ext_ram_data_TRI[0] ),
        .O(\mode[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF04)) 
    \mode[1]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(reset_btn_IBUF),
        .I3(out_data),
        .O(\mode[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAC0AAAA)) 
    \mode[2]_i_1 
       (.I0(\mode_reg_n_0_[2] ),
        .I1(S),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(reset_btn_IBUF),
        .O(\mode[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[0] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(1'b1),
        .D(\mode[0]_i_1_n_0 ),
        .Q(\ext_ram_data_TRI[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[1] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(1'b1),
        .D(\mode[1]_i_1_n_0 ),
        .Q(out_data),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mode_reg[2] 
       (.C(clock_btn_IBUF_BUFG),
        .CE(1'b1),
        .D(\mode[2]_i_1_n_0 ),
        .Q(\mode_reg_n_0_[2] ),
        .R(1'b0));
endmodule

module RegPC
   (leds_OBUF,
    PC_reg,
    S,
    \FSM_sequential_state_reg[1] ,
    reset_btn_IBUF);
  output [12:0]leds_OBUF;
  output [6:0]PC_reg;
  output [0:0]S;
  input [0:0]\FSM_sequential_state_reg[1] ;
  input reset_btn_IBUF;

  wire [0:0]\FSM_sequential_state_reg[1] ;
  wire \PC[2]_i_2_n_0 ;
  wire [6:0]PC_reg;
  wire \PC_reg[10]_i_1_n_0 ;
  wire \PC_reg[10]_i_1_n_1 ;
  wire \PC_reg[10]_i_1_n_2 ;
  wire \PC_reg[10]_i_1_n_3 ;
  wire \PC_reg[10]_i_1_n_4 ;
  wire \PC_reg[10]_i_1_n_5 ;
  wire \PC_reg[10]_i_1_n_6 ;
  wire \PC_reg[10]_i_1_n_7 ;
  wire \PC_reg[14]_i_1_n_0 ;
  wire \PC_reg[14]_i_1_n_1 ;
  wire \PC_reg[14]_i_1_n_2 ;
  wire \PC_reg[14]_i_1_n_3 ;
  wire \PC_reg[14]_i_1_n_4 ;
  wire \PC_reg[14]_i_1_n_5 ;
  wire \PC_reg[14]_i_1_n_6 ;
  wire \PC_reg[14]_i_1_n_7 ;
  wire \PC_reg[18]_i_1_n_0 ;
  wire \PC_reg[18]_i_1_n_1 ;
  wire \PC_reg[18]_i_1_n_2 ;
  wire \PC_reg[18]_i_1_n_3 ;
  wire \PC_reg[18]_i_1_n_4 ;
  wire \PC_reg[18]_i_1_n_5 ;
  wire \PC_reg[18]_i_1_n_6 ;
  wire \PC_reg[18]_i_1_n_7 ;
  wire \PC_reg[22]_i_1_n_7 ;
  wire \PC_reg[2]_i_1_n_0 ;
  wire \PC_reg[2]_i_1_n_1 ;
  wire \PC_reg[2]_i_1_n_2 ;
  wire \PC_reg[2]_i_1_n_3 ;
  wire \PC_reg[2]_i_1_n_4 ;
  wire \PC_reg[2]_i_1_n_5 ;
  wire \PC_reg[2]_i_1_n_6 ;
  wire \PC_reg[2]_i_1_n_7 ;
  wire \PC_reg[6]_i_1_n_0 ;
  wire \PC_reg[6]_i_1_n_1 ;
  wire \PC_reg[6]_i_1_n_2 ;
  wire \PC_reg[6]_i_1_n_3 ;
  wire \PC_reg[6]_i_1_n_4 ;
  wire \PC_reg[6]_i_1_n_5 ;
  wire \PC_reg[6]_i_1_n_6 ;
  wire \PC_reg[6]_i_1_n_7 ;
  wire [0:0]S;
  wire [12:0]leds_OBUF;
  wire reset_btn_IBUF;
  wire [3:0]\NLW_PC_reg[22]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_PC_reg[22]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \PC[2]_i_2 
       (.I0(leds_OBUF[0]),
        .O(\PC[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[10] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[10]_i_1_n_7 ),
        .Q(leds_OBUF[8]));
  CARRY4 \PC_reg[10]_i_1 
       (.CI(\PC_reg[6]_i_1_n_0 ),
        .CO({\PC_reg[10]_i_1_n_0 ,\PC_reg[10]_i_1_n_1 ,\PC_reg[10]_i_1_n_2 ,\PC_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PC_reg[10]_i_1_n_4 ,\PC_reg[10]_i_1_n_5 ,\PC_reg[10]_i_1_n_6 ,\PC_reg[10]_i_1_n_7 }),
        .S(leds_OBUF[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[11] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[10]_i_1_n_6 ),
        .Q(leds_OBUF[9]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[12] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[10]_i_1_n_5 ),
        .Q(leds_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[13] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[10]_i_1_n_4 ),
        .Q(leds_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[14] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[14]_i_1_n_7 ),
        .Q(leds_OBUF[12]));
  CARRY4 \PC_reg[14]_i_1 
       (.CI(\PC_reg[10]_i_1_n_0 ),
        .CO({\PC_reg[14]_i_1_n_0 ,\PC_reg[14]_i_1_n_1 ,\PC_reg[14]_i_1_n_2 ,\PC_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PC_reg[14]_i_1_n_4 ,\PC_reg[14]_i_1_n_5 ,\PC_reg[14]_i_1_n_6 ,\PC_reg[14]_i_1_n_7 }),
        .S({PC_reg[2:0],leds_OBUF[12]}));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[15] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[14]_i_1_n_6 ),
        .Q(PC_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[16] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[14]_i_1_n_5 ),
        .Q(PC_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[17] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[14]_i_1_n_4 ),
        .Q(PC_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[18] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[18]_i_1_n_7 ),
        .Q(PC_reg[3]));
  CARRY4 \PC_reg[18]_i_1 
       (.CI(\PC_reg[14]_i_1_n_0 ),
        .CO({\PC_reg[18]_i_1_n_0 ,\PC_reg[18]_i_1_n_1 ,\PC_reg[18]_i_1_n_2 ,\PC_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PC_reg[18]_i_1_n_4 ,\PC_reg[18]_i_1_n_5 ,\PC_reg[18]_i_1_n_6 ,\PC_reg[18]_i_1_n_7 }),
        .S(PC_reg[6:3]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[19] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[18]_i_1_n_6 ),
        .Q(PC_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[20] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[18]_i_1_n_5 ),
        .Q(PC_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[21] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[18]_i_1_n_4 ),
        .Q(PC_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[22] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[22]_i_1_n_7 ),
        .Q(S));
  CARRY4 \PC_reg[22]_i_1 
       (.CI(\PC_reg[18]_i_1_n_0 ),
        .CO(\NLW_PC_reg[22]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PC_reg[22]_i_1_O_UNCONNECTED [3:1],\PC_reg[22]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,S}));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[2] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[2]_i_1_n_7 ),
        .Q(leds_OBUF[0]));
  CARRY4 \PC_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\PC_reg[2]_i_1_n_0 ,\PC_reg[2]_i_1_n_1 ,\PC_reg[2]_i_1_n_2 ,\PC_reg[2]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\PC_reg[2]_i_1_n_4 ,\PC_reg[2]_i_1_n_5 ,\PC_reg[2]_i_1_n_6 ,\PC_reg[2]_i_1_n_7 }),
        .S({leds_OBUF[3:1],\PC[2]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[3] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[2]_i_1_n_6 ),
        .Q(leds_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[4] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[2]_i_1_n_5 ),
        .Q(leds_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[5] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[2]_i_1_n_4 ),
        .Q(leds_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[6] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[6]_i_1_n_7 ),
        .Q(leds_OBUF[4]));
  CARRY4 \PC_reg[6]_i_1 
       (.CI(\PC_reg[2]_i_1_n_0 ),
        .CO({\PC_reg[6]_i_1_n_0 ,\PC_reg[6]_i_1_n_1 ,\PC_reg[6]_i_1_n_2 ,\PC_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\PC_reg[6]_i_1_n_4 ,\PC_reg[6]_i_1_n_5 ,\PC_reg[6]_i_1_n_6 ,\PC_reg[6]_i_1_n_7 }),
        .S(leds_OBUF[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[7] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[6]_i_1_n_6 ),
        .Q(leds_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[8] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[6]_i_1_n_5 ),
        .Q(leds_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \PC_reg[9] 
       (.C(\FSM_sequential_state_reg[1] ),
        .CE(1'b1),
        .CLR(reset_btn_IBUF),
        .D(\PC_reg[6]_i_1_n_4 ),
        .Q(leds_OBUF[7]));
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

  wire [22:22]InstAddress;
  wire [21:15]\RegPC_c/PC_reg ;
  wire [19:0]base_ram_addr;
  wire [3:0]base_ram_be_n;
  wire base_ram_ce_n;
  wire base_ram_ce_n_OBUF;
  wire [31:0]base_ram_data;
  wire base_ram_oe_n;
  wire base_ram_oe_n_OBUF;
  wire base_ram_we_n;
  wire base_ram_we_n_OBUF;
  wire clock_btn;
  wire clock_btn_IBUF;
  wire clock_btn_IBUF_BUFG;
  wire dm9k_cmd;
  wire dm9k_cs_n;
  wire dm9k_ior_n;
  wire dm9k_iow_n;
  wire dm9k_pwrst_n;
  wire [7:0]dpy0;
  wire [7:0]dpy1;
  wire [19:0]ext_ram_addr;
  wire [19:0]ext_ram_addr_OBUF;
  wire [3:0]ext_ram_be_n;
  wire ext_ram_ce_n;
  wire ext_ram_ce_n_OBUF;
  wire [31:0]ext_ram_data;
  wire \ext_ram_data_TRI[0] ;
  wire ext_ram_oe_n;
  wire ext_ram_oe_n_OBUF;
  wire ext_ram_we_n;
  wire ext_ram_we_n_OBUF;
  wire [22:0]flash_a;
  wire flash_byte_n;
  wire flash_ce_n;
  wire flash_oe_n;
  wire flash_rp_n;
  wire flash_vpen;
  wire flash_we_n;
  wire [15:0]leds;
  wire [15:2]leds_OBUF;
  wire reset_btn;
  wire reset_btn_IBUF;
  wire sl811_a0;
  wire sl811_cs_n;
  wire sl811_dack_n;
  wire sl811_rd_n;
  wire sl811_rst_n;
  wire sl811_wr_n;
  wire txd;
  wire uart_rdn;
  wire uart_rdn_OBUF;
  wire uart_wrn;
  wire uart_wrn_OBUF;
  wire [1:0]video_blue;
  wire video_clk;
  wire video_de;
  wire [2:0]video_green;
  wire video_hsync;
  wire [2:0]video_red;
  wire video_vsync;

  CPU CPU_c
       (.\FSM_sequential_state_reg[1] (leds_OBUF[15]),
        .PC_reg(\RegPC_c/PC_reg ),
        .S(InstAddress),
        .leds_OBUF(leds_OBUF[14:2]),
        .reset_btn_IBUF(reset_btn_IBUF));
  OBUF \base_ram_addr_OBUF[0]_inst 
       (.I(ext_ram_addr_OBUF[0]),
        .O(base_ram_addr[0]));
  OBUF \base_ram_addr_OBUF[10]_inst 
       (.I(ext_ram_addr_OBUF[10]),
        .O(base_ram_addr[10]));
  OBUF \base_ram_addr_OBUF[11]_inst 
       (.I(ext_ram_addr_OBUF[11]),
        .O(base_ram_addr[11]));
  OBUF \base_ram_addr_OBUF[12]_inst 
       (.I(ext_ram_addr_OBUF[12]),
        .O(base_ram_addr[12]));
  OBUF \base_ram_addr_OBUF[13]_inst 
       (.I(ext_ram_addr_OBUF[13]),
        .O(base_ram_addr[13]));
  OBUF \base_ram_addr_OBUF[14]_inst 
       (.I(ext_ram_addr_OBUF[14]),
        .O(base_ram_addr[14]));
  OBUF \base_ram_addr_OBUF[15]_inst 
       (.I(ext_ram_addr_OBUF[15]),
        .O(base_ram_addr[15]));
  OBUF \base_ram_addr_OBUF[16]_inst 
       (.I(ext_ram_addr_OBUF[16]),
        .O(base_ram_addr[16]));
  OBUF \base_ram_addr_OBUF[17]_inst 
       (.I(ext_ram_addr_OBUF[17]),
        .O(base_ram_addr[17]));
  OBUF \base_ram_addr_OBUF[18]_inst 
       (.I(ext_ram_addr_OBUF[18]),
        .O(base_ram_addr[18]));
  OBUF \base_ram_addr_OBUF[19]_inst 
       (.I(ext_ram_addr_OBUF[19]),
        .O(base_ram_addr[19]));
  OBUF \base_ram_addr_OBUF[1]_inst 
       (.I(ext_ram_addr_OBUF[1]),
        .O(base_ram_addr[1]));
  OBUF \base_ram_addr_OBUF[2]_inst 
       (.I(ext_ram_addr_OBUF[2]),
        .O(base_ram_addr[2]));
  OBUF \base_ram_addr_OBUF[3]_inst 
       (.I(ext_ram_addr_OBUF[3]),
        .O(base_ram_addr[3]));
  OBUF \base_ram_addr_OBUF[4]_inst 
       (.I(ext_ram_addr_OBUF[4]),
        .O(base_ram_addr[4]));
  OBUF \base_ram_addr_OBUF[5]_inst 
       (.I(ext_ram_addr_OBUF[5]),
        .O(base_ram_addr[5]));
  OBUF \base_ram_addr_OBUF[6]_inst 
       (.I(ext_ram_addr_OBUF[6]),
        .O(base_ram_addr[6]));
  OBUF \base_ram_addr_OBUF[7]_inst 
       (.I(ext_ram_addr_OBUF[7]),
        .O(base_ram_addr[7]));
  OBUF \base_ram_addr_OBUF[8]_inst 
       (.I(ext_ram_addr_OBUF[8]),
        .O(base_ram_addr[8]));
  OBUF \base_ram_addr_OBUF[9]_inst 
       (.I(ext_ram_addr_OBUF[9]),
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
  OBUFT \base_ram_data_OBUFT[0]_inst 
       (.I(1'b0),
        .O(base_ram_data[0]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[10]_inst 
       (.I(1'b0),
        .O(base_ram_data[10]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[11]_inst 
       (.I(1'b0),
        .O(base_ram_data[11]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[12]_inst 
       (.I(1'b0),
        .O(base_ram_data[12]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[13]_inst 
       (.I(1'b0),
        .O(base_ram_data[13]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[14]_inst 
       (.I(1'b0),
        .O(base_ram_data[14]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[15]_inst 
       (.I(1'b0),
        .O(base_ram_data[15]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[16]_inst 
       (.I(1'b0),
        .O(base_ram_data[16]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[17]_inst 
       (.I(1'b0),
        .O(base_ram_data[17]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[18]_inst 
       (.I(1'b0),
        .O(base_ram_data[18]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[19]_inst 
       (.I(1'b0),
        .O(base_ram_data[19]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[1]_inst 
       (.I(1'b0),
        .O(base_ram_data[1]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[20]_inst 
       (.I(1'b0),
        .O(base_ram_data[20]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[21]_inst 
       (.I(1'b0),
        .O(base_ram_data[21]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[22]_inst 
       (.I(1'b0),
        .O(base_ram_data[22]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[23]_inst 
       (.I(1'b0),
        .O(base_ram_data[23]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[24]_inst 
       (.I(1'b0),
        .O(base_ram_data[24]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[25]_inst 
       (.I(1'b0),
        .O(base_ram_data[25]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[26]_inst 
       (.I(1'b0),
        .O(base_ram_data[26]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[27]_inst 
       (.I(1'b0),
        .O(base_ram_data[27]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[28]_inst 
       (.I(1'b0),
        .O(base_ram_data[28]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[29]_inst 
       (.I(1'b0),
        .O(base_ram_data[29]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[2]_inst 
       (.I(1'b0),
        .O(base_ram_data[2]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[30]_inst 
       (.I(1'b0),
        .O(base_ram_data[30]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[3]_inst 
       (.I(1'b0),
        .O(base_ram_data[3]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[4]_inst 
       (.I(1'b0),
        .O(base_ram_data[4]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[5]_inst 
       (.I(1'b0),
        .O(base_ram_data[5]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[6]_inst 
       (.I(1'b0),
        .O(base_ram_data[6]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[7]_inst 
       (.I(1'b0),
        .O(base_ram_data[7]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[8]_inst 
       (.I(1'b0),
        .O(base_ram_data[8]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \base_ram_data_OBUFT[9]_inst 
       (.I(1'b0),
        .O(base_ram_data[9]),
        .T(\ext_ram_data_TRI[0] ));
  OBUF \base_ram_data_OBUF[31]_inst 
       (.I(1'b0),
        .O(base_ram_data[31]));
  OBUF base_ram_oe_n_OBUF_inst
       (.I(base_ram_oe_n_OBUF),
        .O(base_ram_oe_n));
  OBUF base_ram_we_n_OBUF_inst
       (.I(base_ram_we_n_OBUF),
        .O(base_ram_we_n));
  BUFG clock_btn_IBUF_BUFG_inst
       (.I(clock_btn_IBUF),
        .O(clock_btn_IBUF_BUFG));
  IBUF clock_btn_IBUF_inst
       (.I(clock_btn),
        .O(clock_btn_IBUF));
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
  OBUFT \dpy0_OBUF[7]_inst 
       (.I(1'b0),
        .O(dpy0[7]),
        .T(1'b1));
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
  OBUF \ext_ram_addr_OBUF[0]_inst 
       (.I(ext_ram_addr_OBUF[0]),
        .O(ext_ram_addr[0]));
  OBUF \ext_ram_addr_OBUF[10]_inst 
       (.I(ext_ram_addr_OBUF[10]),
        .O(ext_ram_addr[10]));
  OBUF \ext_ram_addr_OBUF[11]_inst 
       (.I(ext_ram_addr_OBUF[11]),
        .O(ext_ram_addr[11]));
  OBUF \ext_ram_addr_OBUF[12]_inst 
       (.I(ext_ram_addr_OBUF[12]),
        .O(ext_ram_addr[12]));
  OBUF \ext_ram_addr_OBUF[13]_inst 
       (.I(ext_ram_addr_OBUF[13]),
        .O(ext_ram_addr[13]));
  OBUF \ext_ram_addr_OBUF[14]_inst 
       (.I(ext_ram_addr_OBUF[14]),
        .O(ext_ram_addr[14]));
  OBUF \ext_ram_addr_OBUF[15]_inst 
       (.I(ext_ram_addr_OBUF[15]),
        .O(ext_ram_addr[15]));
  OBUF \ext_ram_addr_OBUF[16]_inst 
       (.I(ext_ram_addr_OBUF[16]),
        .O(ext_ram_addr[16]));
  OBUF \ext_ram_addr_OBUF[17]_inst 
       (.I(ext_ram_addr_OBUF[17]),
        .O(ext_ram_addr[17]));
  OBUF \ext_ram_addr_OBUF[18]_inst 
       (.I(ext_ram_addr_OBUF[18]),
        .O(ext_ram_addr[18]));
  OBUF \ext_ram_addr_OBUF[19]_inst 
       (.I(ext_ram_addr_OBUF[19]),
        .O(ext_ram_addr[19]));
  OBUF \ext_ram_addr_OBUF[1]_inst 
       (.I(ext_ram_addr_OBUF[1]),
        .O(ext_ram_addr[1]));
  OBUF \ext_ram_addr_OBUF[2]_inst 
       (.I(ext_ram_addr_OBUF[2]),
        .O(ext_ram_addr[2]));
  OBUF \ext_ram_addr_OBUF[3]_inst 
       (.I(ext_ram_addr_OBUF[3]),
        .O(ext_ram_addr[3]));
  OBUF \ext_ram_addr_OBUF[4]_inst 
       (.I(ext_ram_addr_OBUF[4]),
        .O(ext_ram_addr[4]));
  OBUF \ext_ram_addr_OBUF[5]_inst 
       (.I(ext_ram_addr_OBUF[5]),
        .O(ext_ram_addr[5]));
  OBUF \ext_ram_addr_OBUF[6]_inst 
       (.I(ext_ram_addr_OBUF[6]),
        .O(ext_ram_addr[6]));
  OBUF \ext_ram_addr_OBUF[7]_inst 
       (.I(ext_ram_addr_OBUF[7]),
        .O(ext_ram_addr[7]));
  OBUF \ext_ram_addr_OBUF[8]_inst 
       (.I(ext_ram_addr_OBUF[8]),
        .O(ext_ram_addr[8]));
  OBUF \ext_ram_addr_OBUF[9]_inst 
       (.I(ext_ram_addr_OBUF[9]),
        .O(ext_ram_addr[9]));
  OBUF \ext_ram_be_n_OBUF[0]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[0]));
  OBUF \ext_ram_be_n_OBUF[1]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[1]));
  OBUF \ext_ram_be_n_OBUF[2]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[2]));
  OBUF \ext_ram_be_n_OBUF[3]_inst 
       (.I(1'b0),
        .O(ext_ram_be_n[3]));
  OBUF ext_ram_ce_n_OBUF_inst
       (.I(ext_ram_ce_n_OBUF),
        .O(ext_ram_ce_n));
  OBUFT \ext_ram_data_OBUFT[0]_inst 
       (.I(1'b0),
        .O(ext_ram_data[0]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[10]_inst 
       (.I(1'b0),
        .O(ext_ram_data[10]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[11]_inst 
       (.I(1'b0),
        .O(ext_ram_data[11]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[12]_inst 
       (.I(1'b0),
        .O(ext_ram_data[12]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[13]_inst 
       (.I(1'b0),
        .O(ext_ram_data[13]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[14]_inst 
       (.I(1'b0),
        .O(ext_ram_data[14]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[15]_inst 
       (.I(1'b0),
        .O(ext_ram_data[15]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[16]_inst 
       (.I(1'b0),
        .O(ext_ram_data[16]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[17]_inst 
       (.I(1'b0),
        .O(ext_ram_data[17]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[18]_inst 
       (.I(1'b0),
        .O(ext_ram_data[18]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[19]_inst 
       (.I(1'b0),
        .O(ext_ram_data[19]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[1]_inst 
       (.I(1'b0),
        .O(ext_ram_data[1]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[20]_inst 
       (.I(1'b0),
        .O(ext_ram_data[20]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[21]_inst 
       (.I(1'b0),
        .O(ext_ram_data[21]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[22]_inst 
       (.I(1'b0),
        .O(ext_ram_data[22]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[23]_inst 
       (.I(1'b0),
        .O(ext_ram_data[23]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[24]_inst 
       (.I(1'b0),
        .O(ext_ram_data[24]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[25]_inst 
       (.I(1'b0),
        .O(ext_ram_data[25]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[26]_inst 
       (.I(1'b0),
        .O(ext_ram_data[26]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[27]_inst 
       (.I(1'b0),
        .O(ext_ram_data[27]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[28]_inst 
       (.I(1'b0),
        .O(ext_ram_data[28]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[29]_inst 
       (.I(1'b0),
        .O(ext_ram_data[29]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[2]_inst 
       (.I(1'b0),
        .O(ext_ram_data[2]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[30]_inst 
       (.I(1'b0),
        .O(ext_ram_data[30]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[3]_inst 
       (.I(1'b0),
        .O(ext_ram_data[3]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[4]_inst 
       (.I(1'b0),
        .O(ext_ram_data[4]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[5]_inst 
       (.I(1'b0),
        .O(ext_ram_data[5]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[6]_inst 
       (.I(1'b0),
        .O(ext_ram_data[6]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[7]_inst 
       (.I(1'b0),
        .O(ext_ram_data[7]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[8]_inst 
       (.I(1'b0),
        .O(ext_ram_data[8]),
        .T(\ext_ram_data_TRI[0] ));
  OBUFT \ext_ram_data_OBUFT[9]_inst 
       (.I(1'b0),
        .O(ext_ram_data[9]),
        .T(\ext_ram_data_TRI[0] ));
  OBUF \ext_ram_data_OBUF[31]_inst 
       (.I(1'b0),
        .O(ext_ram_data[31]));
  OBUF ext_ram_oe_n_OBUF_inst
       (.I(ext_ram_oe_n_OBUF),
        .O(ext_ram_oe_n));
  OBUF ext_ram_we_n_OBUF_inst
       (.I(ext_ram_we_n_OBUF),
        .O(ext_ram_we_n));
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
  OBUF \leds_OBUF[0]_inst 
       (.I(1'b0),
        .O(leds[0]));
  OBUF \leds_OBUF[10]_inst 
       (.I(leds_OBUF[10]),
        .O(leds[10]));
  OBUF \leds_OBUF[11]_inst 
       (.I(leds_OBUF[11]),
        .O(leds[11]));
  OBUF \leds_OBUF[12]_inst 
       (.I(leds_OBUF[12]),
        .O(leds[12]));
  OBUF \leds_OBUF[13]_inst 
       (.I(leds_OBUF[13]),
        .O(leds[13]));
  OBUF \leds_OBUF[14]_inst 
       (.I(leds_OBUF[14]),
        .O(leds[14]));
  OBUF \leds_OBUF[15]_inst 
       (.I(leds_OBUF[15]),
        .O(leds[15]));
  OBUF \leds_OBUF[1]_inst 
       (.I(1'b0),
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
  Memory memory_c
       (.PC_reg(\RegPC_c/PC_reg ),
        .\PC_reg[2] (leds_OBUF[15]),
        .S(InstAddress),
        .base_ram_ce_n_OBUF(base_ram_ce_n_OBUF),
        .base_ram_oe_n_OBUF(base_ram_oe_n_OBUF),
        .base_ram_we_n_OBUF(base_ram_we_n_OBUF),
        .clock_btn_IBUF_BUFG(clock_btn_IBUF_BUFG),
        .ext_ram_addr_OBUF(ext_ram_addr_OBUF),
        .ext_ram_ce_n_OBUF(ext_ram_ce_n_OBUF),
        .\ext_ram_data_TRI[0] (\ext_ram_data_TRI[0] ),
        .ext_ram_oe_n_OBUF(ext_ram_oe_n_OBUF),
        .ext_ram_we_n_OBUF(ext_ram_we_n_OBUF),
        .leds_OBUF(leds_OBUF[14:2]),
        .reset_btn_IBUF(reset_btn_IBUF),
        .uart_rdn_OBUF(uart_rdn_OBUF),
        .uart_wrn_OBUF(uart_wrn_OBUF));
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
  OBUF uart_rdn_OBUF_inst
       (.I(uart_rdn_OBUF),
        .O(uart_rdn));
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
