// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec  1 21:20:46 2018
// Host        : LAPTOP-98AM3G01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/3-Autumn/Organization
//               Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.sim/sim_1/synth/func/xsim/tb_func_synth.v}
// Design      : BranchSelector
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module BranchSelector
   (BranchType,
    JumpType,
    EXRegA,
    EXRegB,
    BranchSelect,
    BranchHappen);
  input [1:0]BranchType;
  input [1:0]JumpType;
  input [31:0]EXRegA;
  input [31:0]EXRegB;
  output [1:0]BranchSelect;
  output BranchHappen;

  wire BranchHappen;
  wire BranchHappen_OBUF;
  wire BranchHappen_OBUF_inst_i_10_n_0;
  wire BranchHappen_OBUF_inst_i_10_n_1;
  wire BranchHappen_OBUF_inst_i_10_n_2;
  wire BranchHappen_OBUF_inst_i_10_n_3;
  wire BranchHappen_OBUF_inst_i_11_n_0;
  wire BranchHappen_OBUF_inst_i_12_n_0;
  wire BranchHappen_OBUF_inst_i_13_n_0;
  wire BranchHappen_OBUF_inst_i_14_n_0;
  wire BranchHappen_OBUF_inst_i_14_n_1;
  wire BranchHappen_OBUF_inst_i_14_n_2;
  wire BranchHappen_OBUF_inst_i_14_n_3;
  wire BranchHappen_OBUF_inst_i_15_n_0;
  wire BranchHappen_OBUF_inst_i_16_n_0;
  wire BranchHappen_OBUF_inst_i_17_n_0;
  wire BranchHappen_OBUF_inst_i_18_n_0;
  wire BranchHappen_OBUF_inst_i_19_n_0;
  wire BranchHappen_OBUF_inst_i_20_n_0;
  wire BranchHappen_OBUF_inst_i_21_n_0;
  wire BranchHappen_OBUF_inst_i_22_n_0;
  wire BranchHappen_OBUF_inst_i_23_n_0;
  wire BranchHappen_OBUF_inst_i_23_n_1;
  wire BranchHappen_OBUF_inst_i_23_n_2;
  wire BranchHappen_OBUF_inst_i_23_n_3;
  wire BranchHappen_OBUF_inst_i_24_n_0;
  wire BranchHappen_OBUF_inst_i_25_n_0;
  wire BranchHappen_OBUF_inst_i_26_n_0;
  wire BranchHappen_OBUF_inst_i_27_n_0;
  wire BranchHappen_OBUF_inst_i_28_n_0;
  wire BranchHappen_OBUF_inst_i_28_n_1;
  wire BranchHappen_OBUF_inst_i_28_n_2;
  wire BranchHappen_OBUF_inst_i_28_n_3;
  wire BranchHappen_OBUF_inst_i_29_n_0;
  wire BranchHappen_OBUF_inst_i_30_n_0;
  wire BranchHappen_OBUF_inst_i_31_n_0;
  wire BranchHappen_OBUF_inst_i_32_n_0;
  wire BranchHappen_OBUF_inst_i_33_n_0;
  wire BranchHappen_OBUF_inst_i_33_n_1;
  wire BranchHappen_OBUF_inst_i_33_n_2;
  wire BranchHappen_OBUF_inst_i_33_n_3;
  wire BranchHappen_OBUF_inst_i_34_n_0;
  wire BranchHappen_OBUF_inst_i_35_n_0;
  wire BranchHappen_OBUF_inst_i_36_n_0;
  wire BranchHappen_OBUF_inst_i_37_n_0;
  wire BranchHappen_OBUF_inst_i_38_n_0;
  wire BranchHappen_OBUF_inst_i_39_n_0;
  wire BranchHappen_OBUF_inst_i_3_n_1;
  wire BranchHappen_OBUF_inst_i_3_n_2;
  wire BranchHappen_OBUF_inst_i_3_n_3;
  wire BranchHappen_OBUF_inst_i_40_n_0;
  wire BranchHappen_OBUF_inst_i_41_n_0;
  wire BranchHappen_OBUF_inst_i_42_n_0;
  wire BranchHappen_OBUF_inst_i_43_n_0;
  wire BranchHappen_OBUF_inst_i_44_n_0;
  wire BranchHappen_OBUF_inst_i_45_n_0;
  wire BranchHappen_OBUF_inst_i_46_n_0;
  wire BranchHappen_OBUF_inst_i_47_n_0;
  wire BranchHappen_OBUF_inst_i_48_n_0;
  wire BranchHappen_OBUF_inst_i_49_n_0;
  wire BranchHappen_OBUF_inst_i_4_n_1;
  wire BranchHappen_OBUF_inst_i_4_n_2;
  wire BranchHappen_OBUF_inst_i_4_n_3;
  wire BranchHappen_OBUF_inst_i_50_n_0;
  wire BranchHappen_OBUF_inst_i_50_n_1;
  wire BranchHappen_OBUF_inst_i_50_n_2;
  wire BranchHappen_OBUF_inst_i_50_n_3;
  wire BranchHappen_OBUF_inst_i_51_n_0;
  wire BranchHappen_OBUF_inst_i_52_n_0;
  wire BranchHappen_OBUF_inst_i_53_n_0;
  wire BranchHappen_OBUF_inst_i_54_n_0;
  wire BranchHappen_OBUF_inst_i_55_n_0;
  wire BranchHappen_OBUF_inst_i_56_n_0;
  wire BranchHappen_OBUF_inst_i_57_n_0;
  wire BranchHappen_OBUF_inst_i_58_n_0;
  wire BranchHappen_OBUF_inst_i_59_n_0;
  wire BranchHappen_OBUF_inst_i_5_n_0;
  wire BranchHappen_OBUF_inst_i_5_n_1;
  wire BranchHappen_OBUF_inst_i_5_n_2;
  wire BranchHappen_OBUF_inst_i_5_n_3;
  wire BranchHappen_OBUF_inst_i_60_n_0;
  wire BranchHappen_OBUF_inst_i_61_n_0;
  wire BranchHappen_OBUF_inst_i_62_n_0;
  wire BranchHappen_OBUF_inst_i_63_n_0;
  wire BranchHappen_OBUF_inst_i_64_n_0;
  wire BranchHappen_OBUF_inst_i_65_n_0;
  wire BranchHappen_OBUF_inst_i_66_n_0;
  wire BranchHappen_OBUF_inst_i_6_n_0;
  wire BranchHappen_OBUF_inst_i_6_n_1;
  wire BranchHappen_OBUF_inst_i_6_n_2;
  wire BranchHappen_OBUF_inst_i_6_n_3;
  wire BranchHappen_OBUF_inst_i_7_n_0;
  wire BranchHappen_OBUF_inst_i_8_n_0;
  wire BranchHappen_OBUF_inst_i_9_n_0;
  wire [1:0]BranchSelect;
  wire [1:0]BranchSelect_OBUF;
  wire [1:0]BranchType;
  wire [1:0]BranchType_IBUF;
  wire [31:0]EXRegA;
  wire [31:0]EXRegA_IBUF;
  wire [31:0]EXRegB;
  wire [31:0]EXRegB_IBUF;
  wire [1:0]JumpType;
  wire [1:0]JumpType_IBUF;
  wire ShouldJump;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_10_O_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_14_O_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_23_O_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_28_O_UNCONNECTED;
  wire [3:3]NLW_BranchHappen_OBUF_inst_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_3_O_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_33_O_UNCONNECTED;
  wire [3:3]NLW_BranchHappen_OBUF_inst_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_4_O_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_5_O_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_50_O_UNCONNECTED;
  wire [3:0]NLW_BranchHappen_OBUF_inst_i_6_O_UNCONNECTED;

  OBUF BranchHappen_OBUF_inst
       (.I(BranchHappen_OBUF),
        .O(BranchHappen));
  LUT6 #(
    .INIT(64'hFFEAEEEABBEAAAEA)) 
    BranchHappen_OBUF_inst_i_1
       (.I0(ShouldJump),
        .I1(BranchType_IBUF[1]),
        .I2(BranchHappen_OBUF_inst_i_3_n_1),
        .I3(BranchType_IBUF[0]),
        .I4(BranchHappen_OBUF_inst_i_4_n_1),
        .I5(BranchHappen_OBUF_inst_i_5_n_0),
        .O(BranchHappen_OBUF));
  CARRY4 BranchHappen_OBUF_inst_i_10
       (.CI(BranchHappen_OBUF_inst_i_28_n_0),
        .CO({BranchHappen_OBUF_inst_i_10_n_0,BranchHappen_OBUF_inst_i_10_n_1,BranchHappen_OBUF_inst_i_10_n_2,BranchHappen_OBUF_inst_i_10_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BranchHappen_OBUF_inst_i_10_O_UNCONNECTED[3:0]),
        .S({BranchHappen_OBUF_inst_i_29_n_0,BranchHappen_OBUF_inst_i_30_n_0,BranchHappen_OBUF_inst_i_31_n_0,BranchHappen_OBUF_inst_i_32_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_11
       (.I0(EXRegA_IBUF[30]),
        .I1(EXRegB_IBUF[30]),
        .I2(EXRegA_IBUF[31]),
        .I3(EXRegB_IBUF[31]),
        .O(BranchHappen_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_12
       (.I0(EXRegA_IBUF[27]),
        .I1(EXRegB_IBUF[27]),
        .I2(EXRegB_IBUF[29]),
        .I3(EXRegA_IBUF[29]),
        .I4(EXRegB_IBUF[28]),
        .I5(EXRegA_IBUF[28]),
        .O(BranchHappen_OBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_13
       (.I0(EXRegA_IBUF[24]),
        .I1(EXRegB_IBUF[24]),
        .I2(EXRegB_IBUF[26]),
        .I3(EXRegA_IBUF[26]),
        .I4(EXRegB_IBUF[25]),
        .I5(EXRegA_IBUF[25]),
        .O(BranchHappen_OBUF_inst_i_13_n_0));
  CARRY4 BranchHappen_OBUF_inst_i_14
       (.CI(BranchHappen_OBUF_inst_i_33_n_0),
        .CO({BranchHappen_OBUF_inst_i_14_n_0,BranchHappen_OBUF_inst_i_14_n_1,BranchHappen_OBUF_inst_i_14_n_2,BranchHappen_OBUF_inst_i_14_n_3}),
        .CYINIT(1'b0),
        .DI({BranchHappen_OBUF_inst_i_34_n_0,BranchHappen_OBUF_inst_i_35_n_0,BranchHappen_OBUF_inst_i_36_n_0,BranchHappen_OBUF_inst_i_37_n_0}),
        .O(NLW_BranchHappen_OBUF_inst_i_14_O_UNCONNECTED[3:0]),
        .S({BranchHappen_OBUF_inst_i_38_n_0,BranchHappen_OBUF_inst_i_39_n_0,BranchHappen_OBUF_inst_i_40_n_0,BranchHappen_OBUF_inst_i_41_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_15
       (.I0(EXRegA_IBUF[30]),
        .I1(EXRegB_IBUF[30]),
        .I2(EXRegB_IBUF[31]),
        .I3(EXRegA_IBUF[31]),
        .O(BranchHappen_OBUF_inst_i_15_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_16
       (.I0(EXRegA_IBUF[28]),
        .I1(EXRegB_IBUF[28]),
        .I2(EXRegB_IBUF[29]),
        .I3(EXRegA_IBUF[29]),
        .O(BranchHappen_OBUF_inst_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_17
       (.I0(EXRegA_IBUF[26]),
        .I1(EXRegB_IBUF[26]),
        .I2(EXRegB_IBUF[27]),
        .I3(EXRegA_IBUF[27]),
        .O(BranchHappen_OBUF_inst_i_17_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_18
       (.I0(EXRegA_IBUF[24]),
        .I1(EXRegB_IBUF[24]),
        .I2(EXRegB_IBUF[25]),
        .I3(EXRegA_IBUF[25]),
        .O(BranchHappen_OBUF_inst_i_18_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_19
       (.I0(EXRegA_IBUF[30]),
        .I1(EXRegB_IBUF[30]),
        .I2(EXRegA_IBUF[31]),
        .I3(EXRegB_IBUF[31]),
        .O(BranchHappen_OBUF_inst_i_19_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    BranchHappen_OBUF_inst_i_2
       (.I0(JumpType_IBUF[1]),
        .I1(JumpType_IBUF[0]),
        .O(ShouldJump));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_20
       (.I0(EXRegA_IBUF[28]),
        .I1(EXRegB_IBUF[28]),
        .I2(EXRegA_IBUF[29]),
        .I3(EXRegB_IBUF[29]),
        .O(BranchHappen_OBUF_inst_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_21
       (.I0(EXRegA_IBUF[26]),
        .I1(EXRegB_IBUF[26]),
        .I2(EXRegA_IBUF[27]),
        .I3(EXRegB_IBUF[27]),
        .O(BranchHappen_OBUF_inst_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_22
       (.I0(EXRegA_IBUF[24]),
        .I1(EXRegB_IBUF[24]),
        .I2(EXRegA_IBUF[25]),
        .I3(EXRegB_IBUF[25]),
        .O(BranchHappen_OBUF_inst_i_22_n_0));
  CARRY4 BranchHappen_OBUF_inst_i_23
       (.CI(1'b0),
        .CO({BranchHappen_OBUF_inst_i_23_n_0,BranchHappen_OBUF_inst_i_23_n_1,BranchHappen_OBUF_inst_i_23_n_2,BranchHappen_OBUF_inst_i_23_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_BranchHappen_OBUF_inst_i_23_O_UNCONNECTED[3:0]),
        .S({BranchHappen_OBUF_inst_i_42_n_0,BranchHappen_OBUF_inst_i_43_n_0,BranchHappen_OBUF_inst_i_44_n_0,BranchHappen_OBUF_inst_i_45_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_24
       (.I0(EXRegA_IBUF[21]),
        .I1(EXRegB_IBUF[21]),
        .I2(EXRegB_IBUF[23]),
        .I3(EXRegA_IBUF[23]),
        .I4(EXRegB_IBUF[22]),
        .I5(EXRegA_IBUF[22]),
        .O(BranchHappen_OBUF_inst_i_24_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_25
       (.I0(EXRegA_IBUF[18]),
        .I1(EXRegB_IBUF[18]),
        .I2(EXRegB_IBUF[20]),
        .I3(EXRegA_IBUF[20]),
        .I4(EXRegB_IBUF[19]),
        .I5(EXRegA_IBUF[19]),
        .O(BranchHappen_OBUF_inst_i_25_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_26
       (.I0(EXRegA_IBUF[15]),
        .I1(EXRegB_IBUF[15]),
        .I2(EXRegB_IBUF[17]),
        .I3(EXRegA_IBUF[17]),
        .I4(EXRegB_IBUF[16]),
        .I5(EXRegA_IBUF[16]),
        .O(BranchHappen_OBUF_inst_i_26_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_27
       (.I0(EXRegA_IBUF[12]),
        .I1(EXRegB_IBUF[12]),
        .I2(EXRegB_IBUF[14]),
        .I3(EXRegA_IBUF[14]),
        .I4(EXRegB_IBUF[13]),
        .I5(EXRegA_IBUF[13]),
        .O(BranchHappen_OBUF_inst_i_27_n_0));
  CARRY4 BranchHappen_OBUF_inst_i_28
       (.CI(1'b0),
        .CO({BranchHappen_OBUF_inst_i_28_n_0,BranchHappen_OBUF_inst_i_28_n_1,BranchHappen_OBUF_inst_i_28_n_2,BranchHappen_OBUF_inst_i_28_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BranchHappen_OBUF_inst_i_28_O_UNCONNECTED[3:0]),
        .S({BranchHappen_OBUF_inst_i_46_n_0,BranchHappen_OBUF_inst_i_47_n_0,BranchHappen_OBUF_inst_i_48_n_0,BranchHappen_OBUF_inst_i_49_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_29
       (.I0(EXRegA_IBUF[21]),
        .I1(EXRegB_IBUF[21]),
        .I2(EXRegB_IBUF[23]),
        .I3(EXRegA_IBUF[23]),
        .I4(EXRegB_IBUF[22]),
        .I5(EXRegA_IBUF[22]),
        .O(BranchHappen_OBUF_inst_i_29_n_0));
  CARRY4 BranchHappen_OBUF_inst_i_3
       (.CI(BranchHappen_OBUF_inst_i_6_n_0),
        .CO({NLW_BranchHappen_OBUF_inst_i_3_CO_UNCONNECTED[3],BranchHappen_OBUF_inst_i_3_n_1,BranchHappen_OBUF_inst_i_3_n_2,BranchHappen_OBUF_inst_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_BranchHappen_OBUF_inst_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,BranchHappen_OBUF_inst_i_7_n_0,BranchHappen_OBUF_inst_i_8_n_0,BranchHappen_OBUF_inst_i_9_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_30
       (.I0(EXRegA_IBUF[18]),
        .I1(EXRegB_IBUF[18]),
        .I2(EXRegB_IBUF[20]),
        .I3(EXRegA_IBUF[20]),
        .I4(EXRegB_IBUF[19]),
        .I5(EXRegA_IBUF[19]),
        .O(BranchHappen_OBUF_inst_i_30_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_31
       (.I0(EXRegA_IBUF[15]),
        .I1(EXRegB_IBUF[15]),
        .I2(EXRegB_IBUF[17]),
        .I3(EXRegA_IBUF[17]),
        .I4(EXRegB_IBUF[16]),
        .I5(EXRegA_IBUF[16]),
        .O(BranchHappen_OBUF_inst_i_31_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_32
       (.I0(EXRegA_IBUF[12]),
        .I1(EXRegB_IBUF[12]),
        .I2(EXRegB_IBUF[14]),
        .I3(EXRegA_IBUF[14]),
        .I4(EXRegB_IBUF[13]),
        .I5(EXRegA_IBUF[13]),
        .O(BranchHappen_OBUF_inst_i_32_n_0));
  CARRY4 BranchHappen_OBUF_inst_i_33
       (.CI(BranchHappen_OBUF_inst_i_50_n_0),
        .CO({BranchHappen_OBUF_inst_i_33_n_0,BranchHappen_OBUF_inst_i_33_n_1,BranchHappen_OBUF_inst_i_33_n_2,BranchHappen_OBUF_inst_i_33_n_3}),
        .CYINIT(1'b0),
        .DI({BranchHappen_OBUF_inst_i_51_n_0,BranchHappen_OBUF_inst_i_52_n_0,BranchHappen_OBUF_inst_i_53_n_0,BranchHappen_OBUF_inst_i_54_n_0}),
        .O(NLW_BranchHappen_OBUF_inst_i_33_O_UNCONNECTED[3:0]),
        .S({BranchHappen_OBUF_inst_i_55_n_0,BranchHappen_OBUF_inst_i_56_n_0,BranchHappen_OBUF_inst_i_57_n_0,BranchHappen_OBUF_inst_i_58_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_34
       (.I0(EXRegA_IBUF[22]),
        .I1(EXRegB_IBUF[22]),
        .I2(EXRegB_IBUF[23]),
        .I3(EXRegA_IBUF[23]),
        .O(BranchHappen_OBUF_inst_i_34_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_35
       (.I0(EXRegA_IBUF[20]),
        .I1(EXRegB_IBUF[20]),
        .I2(EXRegB_IBUF[21]),
        .I3(EXRegA_IBUF[21]),
        .O(BranchHappen_OBUF_inst_i_35_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_36
       (.I0(EXRegA_IBUF[18]),
        .I1(EXRegB_IBUF[18]),
        .I2(EXRegB_IBUF[19]),
        .I3(EXRegA_IBUF[19]),
        .O(BranchHappen_OBUF_inst_i_36_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_37
       (.I0(EXRegA_IBUF[16]),
        .I1(EXRegB_IBUF[16]),
        .I2(EXRegB_IBUF[17]),
        .I3(EXRegA_IBUF[17]),
        .O(BranchHappen_OBUF_inst_i_37_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_38
       (.I0(EXRegA_IBUF[22]),
        .I1(EXRegB_IBUF[22]),
        .I2(EXRegA_IBUF[23]),
        .I3(EXRegB_IBUF[23]),
        .O(BranchHappen_OBUF_inst_i_38_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_39
       (.I0(EXRegA_IBUF[20]),
        .I1(EXRegB_IBUF[20]),
        .I2(EXRegA_IBUF[21]),
        .I3(EXRegB_IBUF[21]),
        .O(BranchHappen_OBUF_inst_i_39_n_0));
  CARRY4 BranchHappen_OBUF_inst_i_4
       (.CI(BranchHappen_OBUF_inst_i_10_n_0),
        .CO({NLW_BranchHappen_OBUF_inst_i_4_CO_UNCONNECTED[3],BranchHappen_OBUF_inst_i_4_n_1,BranchHappen_OBUF_inst_i_4_n_2,BranchHappen_OBUF_inst_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_BranchHappen_OBUF_inst_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,BranchHappen_OBUF_inst_i_11_n_0,BranchHappen_OBUF_inst_i_12_n_0,BranchHappen_OBUF_inst_i_13_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_40
       (.I0(EXRegA_IBUF[18]),
        .I1(EXRegB_IBUF[18]),
        .I2(EXRegA_IBUF[19]),
        .I3(EXRegB_IBUF[19]),
        .O(BranchHappen_OBUF_inst_i_40_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_41
       (.I0(EXRegA_IBUF[16]),
        .I1(EXRegB_IBUF[16]),
        .I2(EXRegA_IBUF[17]),
        .I3(EXRegB_IBUF[17]),
        .O(BranchHappen_OBUF_inst_i_41_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_42
       (.I0(EXRegA_IBUF[9]),
        .I1(EXRegB_IBUF[9]),
        .I2(EXRegB_IBUF[11]),
        .I3(EXRegA_IBUF[11]),
        .I4(EXRegB_IBUF[10]),
        .I5(EXRegA_IBUF[10]),
        .O(BranchHappen_OBUF_inst_i_42_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_43
       (.I0(EXRegA_IBUF[6]),
        .I1(EXRegB_IBUF[6]),
        .I2(EXRegB_IBUF[8]),
        .I3(EXRegA_IBUF[8]),
        .I4(EXRegB_IBUF[7]),
        .I5(EXRegA_IBUF[7]),
        .O(BranchHappen_OBUF_inst_i_43_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_44
       (.I0(EXRegA_IBUF[3]),
        .I1(EXRegB_IBUF[3]),
        .I2(EXRegB_IBUF[5]),
        .I3(EXRegA_IBUF[5]),
        .I4(EXRegB_IBUF[4]),
        .I5(EXRegA_IBUF[4]),
        .O(BranchHappen_OBUF_inst_i_44_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_45
       (.I0(EXRegA_IBUF[0]),
        .I1(EXRegB_IBUF[0]),
        .I2(EXRegB_IBUF[2]),
        .I3(EXRegA_IBUF[2]),
        .I4(EXRegB_IBUF[1]),
        .I5(EXRegA_IBUF[1]),
        .O(BranchHappen_OBUF_inst_i_45_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_46
       (.I0(EXRegA_IBUF[9]),
        .I1(EXRegB_IBUF[9]),
        .I2(EXRegB_IBUF[11]),
        .I3(EXRegA_IBUF[11]),
        .I4(EXRegB_IBUF[10]),
        .I5(EXRegA_IBUF[10]),
        .O(BranchHappen_OBUF_inst_i_46_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_47
       (.I0(EXRegA_IBUF[6]),
        .I1(EXRegB_IBUF[6]),
        .I2(EXRegB_IBUF[8]),
        .I3(EXRegA_IBUF[8]),
        .I4(EXRegB_IBUF[7]),
        .I5(EXRegA_IBUF[7]),
        .O(BranchHappen_OBUF_inst_i_47_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_48
       (.I0(EXRegA_IBUF[3]),
        .I1(EXRegB_IBUF[3]),
        .I2(EXRegB_IBUF[5]),
        .I3(EXRegA_IBUF[5]),
        .I4(EXRegB_IBUF[4]),
        .I5(EXRegA_IBUF[4]),
        .O(BranchHappen_OBUF_inst_i_48_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_49
       (.I0(EXRegA_IBUF[0]),
        .I1(EXRegB_IBUF[0]),
        .I2(EXRegB_IBUF[2]),
        .I3(EXRegA_IBUF[2]),
        .I4(EXRegB_IBUF[1]),
        .I5(EXRegA_IBUF[1]),
        .O(BranchHappen_OBUF_inst_i_49_n_0));
  CARRY4 BranchHappen_OBUF_inst_i_5
       (.CI(BranchHappen_OBUF_inst_i_14_n_0),
        .CO({BranchHappen_OBUF_inst_i_5_n_0,BranchHappen_OBUF_inst_i_5_n_1,BranchHappen_OBUF_inst_i_5_n_2,BranchHappen_OBUF_inst_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({BranchHappen_OBUF_inst_i_15_n_0,BranchHappen_OBUF_inst_i_16_n_0,BranchHappen_OBUF_inst_i_17_n_0,BranchHappen_OBUF_inst_i_18_n_0}),
        .O(NLW_BranchHappen_OBUF_inst_i_5_O_UNCONNECTED[3:0]),
        .S({BranchHappen_OBUF_inst_i_19_n_0,BranchHappen_OBUF_inst_i_20_n_0,BranchHappen_OBUF_inst_i_21_n_0,BranchHappen_OBUF_inst_i_22_n_0}));
  CARRY4 BranchHappen_OBUF_inst_i_50
       (.CI(1'b0),
        .CO({BranchHappen_OBUF_inst_i_50_n_0,BranchHappen_OBUF_inst_i_50_n_1,BranchHappen_OBUF_inst_i_50_n_2,BranchHappen_OBUF_inst_i_50_n_3}),
        .CYINIT(1'b0),
        .DI({BranchHappen_OBUF_inst_i_59_n_0,BranchHappen_OBUF_inst_i_60_n_0,BranchHappen_OBUF_inst_i_61_n_0,BranchHappen_OBUF_inst_i_62_n_0}),
        .O(NLW_BranchHappen_OBUF_inst_i_50_O_UNCONNECTED[3:0]),
        .S({BranchHappen_OBUF_inst_i_63_n_0,BranchHappen_OBUF_inst_i_64_n_0,BranchHappen_OBUF_inst_i_65_n_0,BranchHappen_OBUF_inst_i_66_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_51
       (.I0(EXRegA_IBUF[14]),
        .I1(EXRegB_IBUF[14]),
        .I2(EXRegB_IBUF[15]),
        .I3(EXRegA_IBUF[15]),
        .O(BranchHappen_OBUF_inst_i_51_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_52
       (.I0(EXRegA_IBUF[12]),
        .I1(EXRegB_IBUF[12]),
        .I2(EXRegB_IBUF[13]),
        .I3(EXRegA_IBUF[13]),
        .O(BranchHappen_OBUF_inst_i_52_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_53
       (.I0(EXRegA_IBUF[10]),
        .I1(EXRegB_IBUF[10]),
        .I2(EXRegB_IBUF[11]),
        .I3(EXRegA_IBUF[11]),
        .O(BranchHappen_OBUF_inst_i_53_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_54
       (.I0(EXRegA_IBUF[8]),
        .I1(EXRegB_IBUF[8]),
        .I2(EXRegB_IBUF[9]),
        .I3(EXRegA_IBUF[9]),
        .O(BranchHappen_OBUF_inst_i_54_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_55
       (.I0(EXRegA_IBUF[14]),
        .I1(EXRegB_IBUF[14]),
        .I2(EXRegA_IBUF[15]),
        .I3(EXRegB_IBUF[15]),
        .O(BranchHappen_OBUF_inst_i_55_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_56
       (.I0(EXRegA_IBUF[12]),
        .I1(EXRegB_IBUF[12]),
        .I2(EXRegA_IBUF[13]),
        .I3(EXRegB_IBUF[13]),
        .O(BranchHappen_OBUF_inst_i_56_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_57
       (.I0(EXRegA_IBUF[10]),
        .I1(EXRegB_IBUF[10]),
        .I2(EXRegA_IBUF[11]),
        .I3(EXRegB_IBUF[11]),
        .O(BranchHappen_OBUF_inst_i_57_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_58
       (.I0(EXRegA_IBUF[8]),
        .I1(EXRegB_IBUF[8]),
        .I2(EXRegA_IBUF[9]),
        .I3(EXRegB_IBUF[9]),
        .O(BranchHappen_OBUF_inst_i_58_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_59
       (.I0(EXRegA_IBUF[6]),
        .I1(EXRegB_IBUF[6]),
        .I2(EXRegB_IBUF[7]),
        .I3(EXRegA_IBUF[7]),
        .O(BranchHappen_OBUF_inst_i_59_n_0));
  CARRY4 BranchHappen_OBUF_inst_i_6
       (.CI(BranchHappen_OBUF_inst_i_23_n_0),
        .CO({BranchHappen_OBUF_inst_i_6_n_0,BranchHappen_OBUF_inst_i_6_n_1,BranchHappen_OBUF_inst_i_6_n_2,BranchHappen_OBUF_inst_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_BranchHappen_OBUF_inst_i_6_O_UNCONNECTED[3:0]),
        .S({BranchHappen_OBUF_inst_i_24_n_0,BranchHappen_OBUF_inst_i_25_n_0,BranchHappen_OBUF_inst_i_26_n_0,BranchHappen_OBUF_inst_i_27_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_60
       (.I0(EXRegA_IBUF[4]),
        .I1(EXRegB_IBUF[4]),
        .I2(EXRegB_IBUF[5]),
        .I3(EXRegA_IBUF[5]),
        .O(BranchHappen_OBUF_inst_i_60_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_61
       (.I0(EXRegA_IBUF[2]),
        .I1(EXRegB_IBUF[2]),
        .I2(EXRegB_IBUF[3]),
        .I3(EXRegA_IBUF[3]),
        .O(BranchHappen_OBUF_inst_i_61_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    BranchHappen_OBUF_inst_i_62
       (.I0(EXRegA_IBUF[0]),
        .I1(EXRegB_IBUF[0]),
        .I2(EXRegB_IBUF[1]),
        .I3(EXRegA_IBUF[1]),
        .O(BranchHappen_OBUF_inst_i_62_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_63
       (.I0(EXRegA_IBUF[6]),
        .I1(EXRegB_IBUF[6]),
        .I2(EXRegA_IBUF[7]),
        .I3(EXRegB_IBUF[7]),
        .O(BranchHappen_OBUF_inst_i_63_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_64
       (.I0(EXRegA_IBUF[4]),
        .I1(EXRegB_IBUF[4]),
        .I2(EXRegA_IBUF[5]),
        .I3(EXRegB_IBUF[5]),
        .O(BranchHappen_OBUF_inst_i_64_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_65
       (.I0(EXRegA_IBUF[2]),
        .I1(EXRegB_IBUF[2]),
        .I2(EXRegA_IBUF[3]),
        .I3(EXRegB_IBUF[3]),
        .O(BranchHappen_OBUF_inst_i_65_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_66
       (.I0(EXRegA_IBUF[0]),
        .I1(EXRegB_IBUF[0]),
        .I2(EXRegA_IBUF[1]),
        .I3(EXRegB_IBUF[1]),
        .O(BranchHappen_OBUF_inst_i_66_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    BranchHappen_OBUF_inst_i_7
       (.I0(EXRegA_IBUF[30]),
        .I1(EXRegB_IBUF[30]),
        .I2(EXRegA_IBUF[31]),
        .I3(EXRegB_IBUF[31]),
        .O(BranchHappen_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_8
       (.I0(EXRegA_IBUF[27]),
        .I1(EXRegB_IBUF[27]),
        .I2(EXRegB_IBUF[29]),
        .I3(EXRegA_IBUF[29]),
        .I4(EXRegB_IBUF[28]),
        .I5(EXRegA_IBUF[28]),
        .O(BranchHappen_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    BranchHappen_OBUF_inst_i_9
       (.I0(EXRegA_IBUF[24]),
        .I1(EXRegB_IBUF[24]),
        .I2(EXRegB_IBUF[26]),
        .I3(EXRegA_IBUF[26]),
        .I4(EXRegB_IBUF[25]),
        .I5(EXRegA_IBUF[25]),
        .O(BranchHappen_OBUF_inst_i_9_n_0));
  OBUF \BranchSelect_OBUF[0]_inst 
       (.I(BranchSelect_OBUF[0]),
        .O(BranchSelect[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8AAA8A8)) 
    \BranchSelect_OBUF[0]_inst_i_1 
       (.I0(BranchHappen_OBUF),
        .I1(BranchType_IBUF[1]),
        .I2(BranchType_IBUF[0]),
        .I3(JumpType_IBUF[1]),
        .I4(JumpType_IBUF[0]),
        .O(BranchSelect_OBUF[0]));
  OBUF \BranchSelect_OBUF[1]_inst 
       (.I(BranchSelect_OBUF[1]),
        .O(BranchSelect[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \BranchSelect_OBUF[1]_inst_i_1 
       (.I0(BranchHappen_OBUF),
        .I1(BranchType_IBUF[0]),
        .I2(BranchType_IBUF[1]),
        .O(BranchSelect_OBUF[1]));
  IBUF \BranchType_IBUF[0]_inst 
       (.I(BranchType[0]),
        .O(BranchType_IBUF[0]));
  IBUF \BranchType_IBUF[1]_inst 
       (.I(BranchType[1]),
        .O(BranchType_IBUF[1]));
  IBUF \EXRegA_IBUF[0]_inst 
       (.I(EXRegA[0]),
        .O(EXRegA_IBUF[0]));
  IBUF \EXRegA_IBUF[10]_inst 
       (.I(EXRegA[10]),
        .O(EXRegA_IBUF[10]));
  IBUF \EXRegA_IBUF[11]_inst 
       (.I(EXRegA[11]),
        .O(EXRegA_IBUF[11]));
  IBUF \EXRegA_IBUF[12]_inst 
       (.I(EXRegA[12]),
        .O(EXRegA_IBUF[12]));
  IBUF \EXRegA_IBUF[13]_inst 
       (.I(EXRegA[13]),
        .O(EXRegA_IBUF[13]));
  IBUF \EXRegA_IBUF[14]_inst 
       (.I(EXRegA[14]),
        .O(EXRegA_IBUF[14]));
  IBUF \EXRegA_IBUF[15]_inst 
       (.I(EXRegA[15]),
        .O(EXRegA_IBUF[15]));
  IBUF \EXRegA_IBUF[16]_inst 
       (.I(EXRegA[16]),
        .O(EXRegA_IBUF[16]));
  IBUF \EXRegA_IBUF[17]_inst 
       (.I(EXRegA[17]),
        .O(EXRegA_IBUF[17]));
  IBUF \EXRegA_IBUF[18]_inst 
       (.I(EXRegA[18]),
        .O(EXRegA_IBUF[18]));
  IBUF \EXRegA_IBUF[19]_inst 
       (.I(EXRegA[19]),
        .O(EXRegA_IBUF[19]));
  IBUF \EXRegA_IBUF[1]_inst 
       (.I(EXRegA[1]),
        .O(EXRegA_IBUF[1]));
  IBUF \EXRegA_IBUF[20]_inst 
       (.I(EXRegA[20]),
        .O(EXRegA_IBUF[20]));
  IBUF \EXRegA_IBUF[21]_inst 
       (.I(EXRegA[21]),
        .O(EXRegA_IBUF[21]));
  IBUF \EXRegA_IBUF[22]_inst 
       (.I(EXRegA[22]),
        .O(EXRegA_IBUF[22]));
  IBUF \EXRegA_IBUF[23]_inst 
       (.I(EXRegA[23]),
        .O(EXRegA_IBUF[23]));
  IBUF \EXRegA_IBUF[24]_inst 
       (.I(EXRegA[24]),
        .O(EXRegA_IBUF[24]));
  IBUF \EXRegA_IBUF[25]_inst 
       (.I(EXRegA[25]),
        .O(EXRegA_IBUF[25]));
  IBUF \EXRegA_IBUF[26]_inst 
       (.I(EXRegA[26]),
        .O(EXRegA_IBUF[26]));
  IBUF \EXRegA_IBUF[27]_inst 
       (.I(EXRegA[27]),
        .O(EXRegA_IBUF[27]));
  IBUF \EXRegA_IBUF[28]_inst 
       (.I(EXRegA[28]),
        .O(EXRegA_IBUF[28]));
  IBUF \EXRegA_IBUF[29]_inst 
       (.I(EXRegA[29]),
        .O(EXRegA_IBUF[29]));
  IBUF \EXRegA_IBUF[2]_inst 
       (.I(EXRegA[2]),
        .O(EXRegA_IBUF[2]));
  IBUF \EXRegA_IBUF[30]_inst 
       (.I(EXRegA[30]),
        .O(EXRegA_IBUF[30]));
  IBUF \EXRegA_IBUF[31]_inst 
       (.I(EXRegA[31]),
        .O(EXRegA_IBUF[31]));
  IBUF \EXRegA_IBUF[3]_inst 
       (.I(EXRegA[3]),
        .O(EXRegA_IBUF[3]));
  IBUF \EXRegA_IBUF[4]_inst 
       (.I(EXRegA[4]),
        .O(EXRegA_IBUF[4]));
  IBUF \EXRegA_IBUF[5]_inst 
       (.I(EXRegA[5]),
        .O(EXRegA_IBUF[5]));
  IBUF \EXRegA_IBUF[6]_inst 
       (.I(EXRegA[6]),
        .O(EXRegA_IBUF[6]));
  IBUF \EXRegA_IBUF[7]_inst 
       (.I(EXRegA[7]),
        .O(EXRegA_IBUF[7]));
  IBUF \EXRegA_IBUF[8]_inst 
       (.I(EXRegA[8]),
        .O(EXRegA_IBUF[8]));
  IBUF \EXRegA_IBUF[9]_inst 
       (.I(EXRegA[9]),
        .O(EXRegA_IBUF[9]));
  IBUF \EXRegB_IBUF[0]_inst 
       (.I(EXRegB[0]),
        .O(EXRegB_IBUF[0]));
  IBUF \EXRegB_IBUF[10]_inst 
       (.I(EXRegB[10]),
        .O(EXRegB_IBUF[10]));
  IBUF \EXRegB_IBUF[11]_inst 
       (.I(EXRegB[11]),
        .O(EXRegB_IBUF[11]));
  IBUF \EXRegB_IBUF[12]_inst 
       (.I(EXRegB[12]),
        .O(EXRegB_IBUF[12]));
  IBUF \EXRegB_IBUF[13]_inst 
       (.I(EXRegB[13]),
        .O(EXRegB_IBUF[13]));
  IBUF \EXRegB_IBUF[14]_inst 
       (.I(EXRegB[14]),
        .O(EXRegB_IBUF[14]));
  IBUF \EXRegB_IBUF[15]_inst 
       (.I(EXRegB[15]),
        .O(EXRegB_IBUF[15]));
  IBUF \EXRegB_IBUF[16]_inst 
       (.I(EXRegB[16]),
        .O(EXRegB_IBUF[16]));
  IBUF \EXRegB_IBUF[17]_inst 
       (.I(EXRegB[17]),
        .O(EXRegB_IBUF[17]));
  IBUF \EXRegB_IBUF[18]_inst 
       (.I(EXRegB[18]),
        .O(EXRegB_IBUF[18]));
  IBUF \EXRegB_IBUF[19]_inst 
       (.I(EXRegB[19]),
        .O(EXRegB_IBUF[19]));
  IBUF \EXRegB_IBUF[1]_inst 
       (.I(EXRegB[1]),
        .O(EXRegB_IBUF[1]));
  IBUF \EXRegB_IBUF[20]_inst 
       (.I(EXRegB[20]),
        .O(EXRegB_IBUF[20]));
  IBUF \EXRegB_IBUF[21]_inst 
       (.I(EXRegB[21]),
        .O(EXRegB_IBUF[21]));
  IBUF \EXRegB_IBUF[22]_inst 
       (.I(EXRegB[22]),
        .O(EXRegB_IBUF[22]));
  IBUF \EXRegB_IBUF[23]_inst 
       (.I(EXRegB[23]),
        .O(EXRegB_IBUF[23]));
  IBUF \EXRegB_IBUF[24]_inst 
       (.I(EXRegB[24]),
        .O(EXRegB_IBUF[24]));
  IBUF \EXRegB_IBUF[25]_inst 
       (.I(EXRegB[25]),
        .O(EXRegB_IBUF[25]));
  IBUF \EXRegB_IBUF[26]_inst 
       (.I(EXRegB[26]),
        .O(EXRegB_IBUF[26]));
  IBUF \EXRegB_IBUF[27]_inst 
       (.I(EXRegB[27]),
        .O(EXRegB_IBUF[27]));
  IBUF \EXRegB_IBUF[28]_inst 
       (.I(EXRegB[28]),
        .O(EXRegB_IBUF[28]));
  IBUF \EXRegB_IBUF[29]_inst 
       (.I(EXRegB[29]),
        .O(EXRegB_IBUF[29]));
  IBUF \EXRegB_IBUF[2]_inst 
       (.I(EXRegB[2]),
        .O(EXRegB_IBUF[2]));
  IBUF \EXRegB_IBUF[30]_inst 
       (.I(EXRegB[30]),
        .O(EXRegB_IBUF[30]));
  IBUF \EXRegB_IBUF[31]_inst 
       (.I(EXRegB[31]),
        .O(EXRegB_IBUF[31]));
  IBUF \EXRegB_IBUF[3]_inst 
       (.I(EXRegB[3]),
        .O(EXRegB_IBUF[3]));
  IBUF \EXRegB_IBUF[4]_inst 
       (.I(EXRegB[4]),
        .O(EXRegB_IBUF[4]));
  IBUF \EXRegB_IBUF[5]_inst 
       (.I(EXRegB[5]),
        .O(EXRegB_IBUF[5]));
  IBUF \EXRegB_IBUF[6]_inst 
       (.I(EXRegB[6]),
        .O(EXRegB_IBUF[6]));
  IBUF \EXRegB_IBUF[7]_inst 
       (.I(EXRegB[7]),
        .O(EXRegB_IBUF[7]));
  IBUF \EXRegB_IBUF[8]_inst 
       (.I(EXRegB[8]),
        .O(EXRegB_IBUF[8]));
  IBUF \EXRegB_IBUF[9]_inst 
       (.I(EXRegB[9]),
        .O(EXRegB_IBUF[9]));
  IBUF \JumpType_IBUF[0]_inst 
       (.I(JumpType[0]),
        .O(JumpType_IBUF[0]));
  IBUF \JumpType_IBUF[1]_inst 
       (.I(JumpType[1]),
        .O(JumpType_IBUF[1]));
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
