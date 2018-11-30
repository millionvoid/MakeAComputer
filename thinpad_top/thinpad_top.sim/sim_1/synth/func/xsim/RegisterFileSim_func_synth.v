// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Nov 30 22:56:11 2018
// Host        : LAPTOP-98AM3G01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/3-Autumn/Organization
//               Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.sim/sim_1/synth/func/xsim/RegisterFileSim_func_synth.v}
// Design      : RegisterFile
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module RegisterFile
   (clk,
    ReadRegA,
    ReadRegB,
    NPCInput,
    WriteReg,
    WriteData,
    RegWrite,
    ReadDataA,
    ReadDataB);
  input clk;
  input [5:0]ReadRegA;
  input [5:0]ReadRegB;
  input [31:0]NPCInput;
  input [5:0]WriteReg;
  input [31:0]WriteData;
  input RegWrite;
  output [31:0]ReadDataA;
  output [31:0]ReadDataB;

  wire [31:0]NPCInput;
  wire [31:0]NPCInput_IBUF;
  wire [31:0]ReadDataA;
  wire [31:0]ReadDataA0;
  wire [31:0]ReadDataA_OBUF;
  wire \ReadDataA_OBUF[31]_inst_i_2_n_0 ;
  wire [31:0]ReadDataB;
  wire [31:0]ReadDataB0;
  wire [31:0]ReadDataB_OBUF;
  wire \ReadDataB_OBUF[31]_inst_i_2_n_0 ;
  wire [5:0]ReadRegA;
  wire [5:0]ReadRegA_IBUF;
  wire [5:0]ReadRegB;
  wire [5:0]ReadRegB_IBUF;
  wire RegWrite;
  wire RegWrite_IBUF;
  wire [31:0]WriteData;
  wire [31:0]WriteData_IBUF;
  wire [5:0]WriteReg;
  wire [5:0]WriteReg_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire p_0_in;
  wire registers_reg_r1_0_31_0_5_i_2_n_0;
  wire [1:0]NLW_registers_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_registers_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  IBUF \NPCInput_IBUF[0]_inst 
       (.I(NPCInput[0]),
        .O(NPCInput_IBUF[0]));
  IBUF \NPCInput_IBUF[10]_inst 
       (.I(NPCInput[10]),
        .O(NPCInput_IBUF[10]));
  IBUF \NPCInput_IBUF[11]_inst 
       (.I(NPCInput[11]),
        .O(NPCInput_IBUF[11]));
  IBUF \NPCInput_IBUF[12]_inst 
       (.I(NPCInput[12]),
        .O(NPCInput_IBUF[12]));
  IBUF \NPCInput_IBUF[13]_inst 
       (.I(NPCInput[13]),
        .O(NPCInput_IBUF[13]));
  IBUF \NPCInput_IBUF[14]_inst 
       (.I(NPCInput[14]),
        .O(NPCInput_IBUF[14]));
  IBUF \NPCInput_IBUF[15]_inst 
       (.I(NPCInput[15]),
        .O(NPCInput_IBUF[15]));
  IBUF \NPCInput_IBUF[16]_inst 
       (.I(NPCInput[16]),
        .O(NPCInput_IBUF[16]));
  IBUF \NPCInput_IBUF[17]_inst 
       (.I(NPCInput[17]),
        .O(NPCInput_IBUF[17]));
  IBUF \NPCInput_IBUF[18]_inst 
       (.I(NPCInput[18]),
        .O(NPCInput_IBUF[18]));
  IBUF \NPCInput_IBUF[19]_inst 
       (.I(NPCInput[19]),
        .O(NPCInput_IBUF[19]));
  IBUF \NPCInput_IBUF[1]_inst 
       (.I(NPCInput[1]),
        .O(NPCInput_IBUF[1]));
  IBUF \NPCInput_IBUF[20]_inst 
       (.I(NPCInput[20]),
        .O(NPCInput_IBUF[20]));
  IBUF \NPCInput_IBUF[21]_inst 
       (.I(NPCInput[21]),
        .O(NPCInput_IBUF[21]));
  IBUF \NPCInput_IBUF[22]_inst 
       (.I(NPCInput[22]),
        .O(NPCInput_IBUF[22]));
  IBUF \NPCInput_IBUF[23]_inst 
       (.I(NPCInput[23]),
        .O(NPCInput_IBUF[23]));
  IBUF \NPCInput_IBUF[24]_inst 
       (.I(NPCInput[24]),
        .O(NPCInput_IBUF[24]));
  IBUF \NPCInput_IBUF[25]_inst 
       (.I(NPCInput[25]),
        .O(NPCInput_IBUF[25]));
  IBUF \NPCInput_IBUF[26]_inst 
       (.I(NPCInput[26]),
        .O(NPCInput_IBUF[26]));
  IBUF \NPCInput_IBUF[27]_inst 
       (.I(NPCInput[27]),
        .O(NPCInput_IBUF[27]));
  IBUF \NPCInput_IBUF[28]_inst 
       (.I(NPCInput[28]),
        .O(NPCInput_IBUF[28]));
  IBUF \NPCInput_IBUF[29]_inst 
       (.I(NPCInput[29]),
        .O(NPCInput_IBUF[29]));
  IBUF \NPCInput_IBUF[2]_inst 
       (.I(NPCInput[2]),
        .O(NPCInput_IBUF[2]));
  IBUF \NPCInput_IBUF[30]_inst 
       (.I(NPCInput[30]),
        .O(NPCInput_IBUF[30]));
  IBUF \NPCInput_IBUF[31]_inst 
       (.I(NPCInput[31]),
        .O(NPCInput_IBUF[31]));
  IBUF \NPCInput_IBUF[3]_inst 
       (.I(NPCInput[3]),
        .O(NPCInput_IBUF[3]));
  IBUF \NPCInput_IBUF[4]_inst 
       (.I(NPCInput[4]),
        .O(NPCInput_IBUF[4]));
  IBUF \NPCInput_IBUF[5]_inst 
       (.I(NPCInput[5]),
        .O(NPCInput_IBUF[5]));
  IBUF \NPCInput_IBUF[6]_inst 
       (.I(NPCInput[6]),
        .O(NPCInput_IBUF[6]));
  IBUF \NPCInput_IBUF[7]_inst 
       (.I(NPCInput[7]),
        .O(NPCInput_IBUF[7]));
  IBUF \NPCInput_IBUF[8]_inst 
       (.I(NPCInput[8]),
        .O(NPCInput_IBUF[8]));
  IBUF \NPCInput_IBUF[9]_inst 
       (.I(NPCInput[9]),
        .O(NPCInput_IBUF[9]));
  OBUF \ReadDataA_OBUF[0]_inst 
       (.I(ReadDataA_OBUF[0]),
        .O(ReadDataA[0]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[0]_inst_i_1 
       (.I0(NPCInput_IBUF[0]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[0]),
        .O(ReadDataA_OBUF[0]));
  OBUF \ReadDataA_OBUF[10]_inst 
       (.I(ReadDataA_OBUF[10]),
        .O(ReadDataA[10]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[10]_inst_i_1 
       (.I0(NPCInput_IBUF[10]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[10]),
        .O(ReadDataA_OBUF[10]));
  OBUF \ReadDataA_OBUF[11]_inst 
       (.I(ReadDataA_OBUF[11]),
        .O(ReadDataA[11]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[11]_inst_i_1 
       (.I0(NPCInput_IBUF[11]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[11]),
        .O(ReadDataA_OBUF[11]));
  OBUF \ReadDataA_OBUF[12]_inst 
       (.I(ReadDataA_OBUF[12]),
        .O(ReadDataA[12]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[12]_inst_i_1 
       (.I0(NPCInput_IBUF[12]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[12]),
        .O(ReadDataA_OBUF[12]));
  OBUF \ReadDataA_OBUF[13]_inst 
       (.I(ReadDataA_OBUF[13]),
        .O(ReadDataA[13]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[13]_inst_i_1 
       (.I0(NPCInput_IBUF[13]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[13]),
        .O(ReadDataA_OBUF[13]));
  OBUF \ReadDataA_OBUF[14]_inst 
       (.I(ReadDataA_OBUF[14]),
        .O(ReadDataA[14]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[14]_inst_i_1 
       (.I0(NPCInput_IBUF[14]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[14]),
        .O(ReadDataA_OBUF[14]));
  OBUF \ReadDataA_OBUF[15]_inst 
       (.I(ReadDataA_OBUF[15]),
        .O(ReadDataA[15]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[15]_inst_i_1 
       (.I0(NPCInput_IBUF[15]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[15]),
        .O(ReadDataA_OBUF[15]));
  OBUF \ReadDataA_OBUF[16]_inst 
       (.I(ReadDataA_OBUF[16]),
        .O(ReadDataA[16]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[16]_inst_i_1 
       (.I0(NPCInput_IBUF[16]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[16]),
        .O(ReadDataA_OBUF[16]));
  OBUF \ReadDataA_OBUF[17]_inst 
       (.I(ReadDataA_OBUF[17]),
        .O(ReadDataA[17]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[17]_inst_i_1 
       (.I0(NPCInput_IBUF[17]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[17]),
        .O(ReadDataA_OBUF[17]));
  OBUF \ReadDataA_OBUF[18]_inst 
       (.I(ReadDataA_OBUF[18]),
        .O(ReadDataA[18]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[18]_inst_i_1 
       (.I0(NPCInput_IBUF[18]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[18]),
        .O(ReadDataA_OBUF[18]));
  OBUF \ReadDataA_OBUF[19]_inst 
       (.I(ReadDataA_OBUF[19]),
        .O(ReadDataA[19]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[19]_inst_i_1 
       (.I0(NPCInput_IBUF[19]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[19]),
        .O(ReadDataA_OBUF[19]));
  OBUF \ReadDataA_OBUF[1]_inst 
       (.I(ReadDataA_OBUF[1]),
        .O(ReadDataA[1]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[1]_inst_i_1 
       (.I0(NPCInput_IBUF[1]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[1]),
        .O(ReadDataA_OBUF[1]));
  OBUF \ReadDataA_OBUF[20]_inst 
       (.I(ReadDataA_OBUF[20]),
        .O(ReadDataA[20]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[20]_inst_i_1 
       (.I0(NPCInput_IBUF[20]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[20]),
        .O(ReadDataA_OBUF[20]));
  OBUF \ReadDataA_OBUF[21]_inst 
       (.I(ReadDataA_OBUF[21]),
        .O(ReadDataA[21]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[21]_inst_i_1 
       (.I0(NPCInput_IBUF[21]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[21]),
        .O(ReadDataA_OBUF[21]));
  OBUF \ReadDataA_OBUF[22]_inst 
       (.I(ReadDataA_OBUF[22]),
        .O(ReadDataA[22]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[22]_inst_i_1 
       (.I0(NPCInput_IBUF[22]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[22]),
        .O(ReadDataA_OBUF[22]));
  OBUF \ReadDataA_OBUF[23]_inst 
       (.I(ReadDataA_OBUF[23]),
        .O(ReadDataA[23]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[23]_inst_i_1 
       (.I0(NPCInput_IBUF[23]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[23]),
        .O(ReadDataA_OBUF[23]));
  OBUF \ReadDataA_OBUF[24]_inst 
       (.I(ReadDataA_OBUF[24]),
        .O(ReadDataA[24]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[24]_inst_i_1 
       (.I0(NPCInput_IBUF[24]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[24]),
        .O(ReadDataA_OBUF[24]));
  OBUF \ReadDataA_OBUF[25]_inst 
       (.I(ReadDataA_OBUF[25]),
        .O(ReadDataA[25]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[25]_inst_i_1 
       (.I0(NPCInput_IBUF[25]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[25]),
        .O(ReadDataA_OBUF[25]));
  OBUF \ReadDataA_OBUF[26]_inst 
       (.I(ReadDataA_OBUF[26]),
        .O(ReadDataA[26]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[26]_inst_i_1 
       (.I0(NPCInput_IBUF[26]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[26]),
        .O(ReadDataA_OBUF[26]));
  OBUF \ReadDataA_OBUF[27]_inst 
       (.I(ReadDataA_OBUF[27]),
        .O(ReadDataA[27]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[27]_inst_i_1 
       (.I0(NPCInput_IBUF[27]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[27]),
        .O(ReadDataA_OBUF[27]));
  OBUF \ReadDataA_OBUF[28]_inst 
       (.I(ReadDataA_OBUF[28]),
        .O(ReadDataA[28]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[28]_inst_i_1 
       (.I0(NPCInput_IBUF[28]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[28]),
        .O(ReadDataA_OBUF[28]));
  OBUF \ReadDataA_OBUF[29]_inst 
       (.I(ReadDataA_OBUF[29]),
        .O(ReadDataA[29]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[29]_inst_i_1 
       (.I0(NPCInput_IBUF[29]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[29]),
        .O(ReadDataA_OBUF[29]));
  OBUF \ReadDataA_OBUF[2]_inst 
       (.I(ReadDataA_OBUF[2]),
        .O(ReadDataA[2]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[2]_inst_i_1 
       (.I0(NPCInput_IBUF[2]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[2]),
        .O(ReadDataA_OBUF[2]));
  OBUF \ReadDataA_OBUF[30]_inst 
       (.I(ReadDataA_OBUF[30]),
        .O(ReadDataA[30]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[30]_inst_i_1 
       (.I0(NPCInput_IBUF[30]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[30]),
        .O(ReadDataA_OBUF[30]));
  OBUF \ReadDataA_OBUF[31]_inst 
       (.I(ReadDataA_OBUF[31]),
        .O(ReadDataA[31]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[31]_inst_i_1 
       (.I0(NPCInput_IBUF[31]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[31]),
        .O(ReadDataA_OBUF[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ReadDataA_OBUF[31]_inst_i_2 
       (.I0(ReadRegA_IBUF[2]),
        .I1(ReadRegA_IBUF[3]),
        .I2(ReadRegA_IBUF[0]),
        .I3(ReadRegA_IBUF[1]),
        .O(\ReadDataA_OBUF[31]_inst_i_2_n_0 ));
  OBUF \ReadDataA_OBUF[3]_inst 
       (.I(ReadDataA_OBUF[3]),
        .O(ReadDataA[3]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[3]_inst_i_1 
       (.I0(NPCInput_IBUF[3]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[3]),
        .O(ReadDataA_OBUF[3]));
  OBUF \ReadDataA_OBUF[4]_inst 
       (.I(ReadDataA_OBUF[4]),
        .O(ReadDataA[4]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[4]_inst_i_1 
       (.I0(NPCInput_IBUF[4]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[4]),
        .O(ReadDataA_OBUF[4]));
  OBUF \ReadDataA_OBUF[5]_inst 
       (.I(ReadDataA_OBUF[5]),
        .O(ReadDataA[5]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[5]_inst_i_1 
       (.I0(NPCInput_IBUF[5]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[5]),
        .O(ReadDataA_OBUF[5]));
  OBUF \ReadDataA_OBUF[6]_inst 
       (.I(ReadDataA_OBUF[6]),
        .O(ReadDataA[6]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[6]_inst_i_1 
       (.I0(NPCInput_IBUF[6]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[6]),
        .O(ReadDataA_OBUF[6]));
  OBUF \ReadDataA_OBUF[7]_inst 
       (.I(ReadDataA_OBUF[7]),
        .O(ReadDataA[7]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[7]_inst_i_1 
       (.I0(NPCInput_IBUF[7]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[7]),
        .O(ReadDataA_OBUF[7]));
  OBUF \ReadDataA_OBUF[8]_inst 
       (.I(ReadDataA_OBUF[8]),
        .O(ReadDataA[8]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[8]_inst_i_1 
       (.I0(NPCInput_IBUF[8]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[8]),
        .O(ReadDataA_OBUF[8]));
  OBUF \ReadDataA_OBUF[9]_inst 
       (.I(ReadDataA_OBUF[9]),
        .O(ReadDataA[9]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataA_OBUF[9]_inst_i_1 
       (.I0(NPCInput_IBUF[9]),
        .I1(ReadRegA_IBUF[4]),
        .I2(\ReadDataA_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegA_IBUF[5]),
        .I4(ReadDataA0[9]),
        .O(ReadDataA_OBUF[9]));
  OBUF \ReadDataB_OBUF[0]_inst 
       (.I(ReadDataB_OBUF[0]),
        .O(ReadDataB[0]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[0]_inst_i_1 
       (.I0(NPCInput_IBUF[0]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[0]),
        .O(ReadDataB_OBUF[0]));
  OBUF \ReadDataB_OBUF[10]_inst 
       (.I(ReadDataB_OBUF[10]),
        .O(ReadDataB[10]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[10]_inst_i_1 
       (.I0(NPCInput_IBUF[10]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[10]),
        .O(ReadDataB_OBUF[10]));
  OBUF \ReadDataB_OBUF[11]_inst 
       (.I(ReadDataB_OBUF[11]),
        .O(ReadDataB[11]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[11]_inst_i_1 
       (.I0(NPCInput_IBUF[11]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[11]),
        .O(ReadDataB_OBUF[11]));
  OBUF \ReadDataB_OBUF[12]_inst 
       (.I(ReadDataB_OBUF[12]),
        .O(ReadDataB[12]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[12]_inst_i_1 
       (.I0(NPCInput_IBUF[12]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[12]),
        .O(ReadDataB_OBUF[12]));
  OBUF \ReadDataB_OBUF[13]_inst 
       (.I(ReadDataB_OBUF[13]),
        .O(ReadDataB[13]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[13]_inst_i_1 
       (.I0(NPCInput_IBUF[13]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[13]),
        .O(ReadDataB_OBUF[13]));
  OBUF \ReadDataB_OBUF[14]_inst 
       (.I(ReadDataB_OBUF[14]),
        .O(ReadDataB[14]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[14]_inst_i_1 
       (.I0(NPCInput_IBUF[14]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[14]),
        .O(ReadDataB_OBUF[14]));
  OBUF \ReadDataB_OBUF[15]_inst 
       (.I(ReadDataB_OBUF[15]),
        .O(ReadDataB[15]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[15]_inst_i_1 
       (.I0(NPCInput_IBUF[15]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[15]),
        .O(ReadDataB_OBUF[15]));
  OBUF \ReadDataB_OBUF[16]_inst 
       (.I(ReadDataB_OBUF[16]),
        .O(ReadDataB[16]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[16]_inst_i_1 
       (.I0(NPCInput_IBUF[16]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[16]),
        .O(ReadDataB_OBUF[16]));
  OBUF \ReadDataB_OBUF[17]_inst 
       (.I(ReadDataB_OBUF[17]),
        .O(ReadDataB[17]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[17]_inst_i_1 
       (.I0(NPCInput_IBUF[17]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[17]),
        .O(ReadDataB_OBUF[17]));
  OBUF \ReadDataB_OBUF[18]_inst 
       (.I(ReadDataB_OBUF[18]),
        .O(ReadDataB[18]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[18]_inst_i_1 
       (.I0(NPCInput_IBUF[18]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[18]),
        .O(ReadDataB_OBUF[18]));
  OBUF \ReadDataB_OBUF[19]_inst 
       (.I(ReadDataB_OBUF[19]),
        .O(ReadDataB[19]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[19]_inst_i_1 
       (.I0(NPCInput_IBUF[19]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[19]),
        .O(ReadDataB_OBUF[19]));
  OBUF \ReadDataB_OBUF[1]_inst 
       (.I(ReadDataB_OBUF[1]),
        .O(ReadDataB[1]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[1]_inst_i_1 
       (.I0(NPCInput_IBUF[1]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[1]),
        .O(ReadDataB_OBUF[1]));
  OBUF \ReadDataB_OBUF[20]_inst 
       (.I(ReadDataB_OBUF[20]),
        .O(ReadDataB[20]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[20]_inst_i_1 
       (.I0(NPCInput_IBUF[20]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[20]),
        .O(ReadDataB_OBUF[20]));
  OBUF \ReadDataB_OBUF[21]_inst 
       (.I(ReadDataB_OBUF[21]),
        .O(ReadDataB[21]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[21]_inst_i_1 
       (.I0(NPCInput_IBUF[21]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[21]),
        .O(ReadDataB_OBUF[21]));
  OBUF \ReadDataB_OBUF[22]_inst 
       (.I(ReadDataB_OBUF[22]),
        .O(ReadDataB[22]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[22]_inst_i_1 
       (.I0(NPCInput_IBUF[22]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[22]),
        .O(ReadDataB_OBUF[22]));
  OBUF \ReadDataB_OBUF[23]_inst 
       (.I(ReadDataB_OBUF[23]),
        .O(ReadDataB[23]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[23]_inst_i_1 
       (.I0(NPCInput_IBUF[23]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[23]),
        .O(ReadDataB_OBUF[23]));
  OBUF \ReadDataB_OBUF[24]_inst 
       (.I(ReadDataB_OBUF[24]),
        .O(ReadDataB[24]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[24]_inst_i_1 
       (.I0(NPCInput_IBUF[24]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[24]),
        .O(ReadDataB_OBUF[24]));
  OBUF \ReadDataB_OBUF[25]_inst 
       (.I(ReadDataB_OBUF[25]),
        .O(ReadDataB[25]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[25]_inst_i_1 
       (.I0(NPCInput_IBUF[25]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[25]),
        .O(ReadDataB_OBUF[25]));
  OBUF \ReadDataB_OBUF[26]_inst 
       (.I(ReadDataB_OBUF[26]),
        .O(ReadDataB[26]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[26]_inst_i_1 
       (.I0(NPCInput_IBUF[26]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[26]),
        .O(ReadDataB_OBUF[26]));
  OBUF \ReadDataB_OBUF[27]_inst 
       (.I(ReadDataB_OBUF[27]),
        .O(ReadDataB[27]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[27]_inst_i_1 
       (.I0(NPCInput_IBUF[27]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[27]),
        .O(ReadDataB_OBUF[27]));
  OBUF \ReadDataB_OBUF[28]_inst 
       (.I(ReadDataB_OBUF[28]),
        .O(ReadDataB[28]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[28]_inst_i_1 
       (.I0(NPCInput_IBUF[28]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[28]),
        .O(ReadDataB_OBUF[28]));
  OBUF \ReadDataB_OBUF[29]_inst 
       (.I(ReadDataB_OBUF[29]),
        .O(ReadDataB[29]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[29]_inst_i_1 
       (.I0(NPCInput_IBUF[29]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[29]),
        .O(ReadDataB_OBUF[29]));
  OBUF \ReadDataB_OBUF[2]_inst 
       (.I(ReadDataB_OBUF[2]),
        .O(ReadDataB[2]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[2]_inst_i_1 
       (.I0(NPCInput_IBUF[2]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[2]),
        .O(ReadDataB_OBUF[2]));
  OBUF \ReadDataB_OBUF[30]_inst 
       (.I(ReadDataB_OBUF[30]),
        .O(ReadDataB[30]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[30]_inst_i_1 
       (.I0(NPCInput_IBUF[30]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[30]),
        .O(ReadDataB_OBUF[30]));
  OBUF \ReadDataB_OBUF[31]_inst 
       (.I(ReadDataB_OBUF[31]),
        .O(ReadDataB[31]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[31]_inst_i_1 
       (.I0(NPCInput_IBUF[31]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[31]),
        .O(ReadDataB_OBUF[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ReadDataB_OBUF[31]_inst_i_2 
       (.I0(ReadRegB_IBUF[2]),
        .I1(ReadRegB_IBUF[3]),
        .I2(ReadRegB_IBUF[0]),
        .I3(ReadRegB_IBUF[1]),
        .O(\ReadDataB_OBUF[31]_inst_i_2_n_0 ));
  OBUF \ReadDataB_OBUF[3]_inst 
       (.I(ReadDataB_OBUF[3]),
        .O(ReadDataB[3]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[3]_inst_i_1 
       (.I0(NPCInput_IBUF[3]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[3]),
        .O(ReadDataB_OBUF[3]));
  OBUF \ReadDataB_OBUF[4]_inst 
       (.I(ReadDataB_OBUF[4]),
        .O(ReadDataB[4]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[4]_inst_i_1 
       (.I0(NPCInput_IBUF[4]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[4]),
        .O(ReadDataB_OBUF[4]));
  OBUF \ReadDataB_OBUF[5]_inst 
       (.I(ReadDataB_OBUF[5]),
        .O(ReadDataB[5]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[5]_inst_i_1 
       (.I0(NPCInput_IBUF[5]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[5]),
        .O(ReadDataB_OBUF[5]));
  OBUF \ReadDataB_OBUF[6]_inst 
       (.I(ReadDataB_OBUF[6]),
        .O(ReadDataB[6]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[6]_inst_i_1 
       (.I0(NPCInput_IBUF[6]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[6]),
        .O(ReadDataB_OBUF[6]));
  OBUF \ReadDataB_OBUF[7]_inst 
       (.I(ReadDataB_OBUF[7]),
        .O(ReadDataB[7]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[7]_inst_i_1 
       (.I0(NPCInput_IBUF[7]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[7]),
        .O(ReadDataB_OBUF[7]));
  OBUF \ReadDataB_OBUF[8]_inst 
       (.I(ReadDataB_OBUF[8]),
        .O(ReadDataB[8]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[8]_inst_i_1 
       (.I0(NPCInput_IBUF[8]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[8]),
        .O(ReadDataB_OBUF[8]));
  OBUF \ReadDataB_OBUF[9]_inst 
       (.I(ReadDataB_OBUF[9]),
        .O(ReadDataB[9]));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \ReadDataB_OBUF[9]_inst_i_1 
       (.I0(NPCInput_IBUF[9]),
        .I1(ReadRegB_IBUF[4]),
        .I2(\ReadDataB_OBUF[31]_inst_i_2_n_0 ),
        .I3(ReadRegB_IBUF[5]),
        .I4(ReadDataB0[9]),
        .O(ReadDataB_OBUF[9]));
  IBUF \ReadRegA_IBUF[0]_inst 
       (.I(ReadRegA[0]),
        .O(ReadRegA_IBUF[0]));
  IBUF \ReadRegA_IBUF[1]_inst 
       (.I(ReadRegA[1]),
        .O(ReadRegA_IBUF[1]));
  IBUF \ReadRegA_IBUF[2]_inst 
       (.I(ReadRegA[2]),
        .O(ReadRegA_IBUF[2]));
  IBUF \ReadRegA_IBUF[3]_inst 
       (.I(ReadRegA[3]),
        .O(ReadRegA_IBUF[3]));
  IBUF \ReadRegA_IBUF[4]_inst 
       (.I(ReadRegA[4]),
        .O(ReadRegA_IBUF[4]));
  IBUF \ReadRegA_IBUF[5]_inst 
       (.I(ReadRegA[5]),
        .O(ReadRegA_IBUF[5]));
  IBUF \ReadRegB_IBUF[0]_inst 
       (.I(ReadRegB[0]),
        .O(ReadRegB_IBUF[0]));
  IBUF \ReadRegB_IBUF[1]_inst 
       (.I(ReadRegB[1]),
        .O(ReadRegB_IBUF[1]));
  IBUF \ReadRegB_IBUF[2]_inst 
       (.I(ReadRegB[2]),
        .O(ReadRegB_IBUF[2]));
  IBUF \ReadRegB_IBUF[3]_inst 
       (.I(ReadRegB[3]),
        .O(ReadRegB_IBUF[3]));
  IBUF \ReadRegB_IBUF[4]_inst 
       (.I(ReadRegB[4]),
        .O(ReadRegB_IBUF[4]));
  IBUF \ReadRegB_IBUF[5]_inst 
       (.I(ReadRegB[5]),
        .O(ReadRegB_IBUF[5]));
  IBUF RegWrite_IBUF_inst
       (.I(RegWrite),
        .O(RegWrite_IBUF));
  IBUF \WriteData_IBUF[0]_inst 
       (.I(WriteData[0]),
        .O(WriteData_IBUF[0]));
  IBUF \WriteData_IBUF[10]_inst 
       (.I(WriteData[10]),
        .O(WriteData_IBUF[10]));
  IBUF \WriteData_IBUF[11]_inst 
       (.I(WriteData[11]),
        .O(WriteData_IBUF[11]));
  IBUF \WriteData_IBUF[12]_inst 
       (.I(WriteData[12]),
        .O(WriteData_IBUF[12]));
  IBUF \WriteData_IBUF[13]_inst 
       (.I(WriteData[13]),
        .O(WriteData_IBUF[13]));
  IBUF \WriteData_IBUF[14]_inst 
       (.I(WriteData[14]),
        .O(WriteData_IBUF[14]));
  IBUF \WriteData_IBUF[15]_inst 
       (.I(WriteData[15]),
        .O(WriteData_IBUF[15]));
  IBUF \WriteData_IBUF[16]_inst 
       (.I(WriteData[16]),
        .O(WriteData_IBUF[16]));
  IBUF \WriteData_IBUF[17]_inst 
       (.I(WriteData[17]),
        .O(WriteData_IBUF[17]));
  IBUF \WriteData_IBUF[18]_inst 
       (.I(WriteData[18]),
        .O(WriteData_IBUF[18]));
  IBUF \WriteData_IBUF[19]_inst 
       (.I(WriteData[19]),
        .O(WriteData_IBUF[19]));
  IBUF \WriteData_IBUF[1]_inst 
       (.I(WriteData[1]),
        .O(WriteData_IBUF[1]));
  IBUF \WriteData_IBUF[20]_inst 
       (.I(WriteData[20]),
        .O(WriteData_IBUF[20]));
  IBUF \WriteData_IBUF[21]_inst 
       (.I(WriteData[21]),
        .O(WriteData_IBUF[21]));
  IBUF \WriteData_IBUF[22]_inst 
       (.I(WriteData[22]),
        .O(WriteData_IBUF[22]));
  IBUF \WriteData_IBUF[23]_inst 
       (.I(WriteData[23]),
        .O(WriteData_IBUF[23]));
  IBUF \WriteData_IBUF[24]_inst 
       (.I(WriteData[24]),
        .O(WriteData_IBUF[24]));
  IBUF \WriteData_IBUF[25]_inst 
       (.I(WriteData[25]),
        .O(WriteData_IBUF[25]));
  IBUF \WriteData_IBUF[26]_inst 
       (.I(WriteData[26]),
        .O(WriteData_IBUF[26]));
  IBUF \WriteData_IBUF[27]_inst 
       (.I(WriteData[27]),
        .O(WriteData_IBUF[27]));
  IBUF \WriteData_IBUF[28]_inst 
       (.I(WriteData[28]),
        .O(WriteData_IBUF[28]));
  IBUF \WriteData_IBUF[29]_inst 
       (.I(WriteData[29]),
        .O(WriteData_IBUF[29]));
  IBUF \WriteData_IBUF[2]_inst 
       (.I(WriteData[2]),
        .O(WriteData_IBUF[2]));
  IBUF \WriteData_IBUF[30]_inst 
       (.I(WriteData[30]),
        .O(WriteData_IBUF[30]));
  IBUF \WriteData_IBUF[31]_inst 
       (.I(WriteData[31]),
        .O(WriteData_IBUF[31]));
  IBUF \WriteData_IBUF[3]_inst 
       (.I(WriteData[3]),
        .O(WriteData_IBUF[3]));
  IBUF \WriteData_IBUF[4]_inst 
       (.I(WriteData[4]),
        .O(WriteData_IBUF[4]));
  IBUF \WriteData_IBUF[5]_inst 
       (.I(WriteData[5]),
        .O(WriteData_IBUF[5]));
  IBUF \WriteData_IBUF[6]_inst 
       (.I(WriteData[6]),
        .O(WriteData_IBUF[6]));
  IBUF \WriteData_IBUF[7]_inst 
       (.I(WriteData[7]),
        .O(WriteData_IBUF[7]));
  IBUF \WriteData_IBUF[8]_inst 
       (.I(WriteData[8]),
        .O(WriteData_IBUF[8]));
  IBUF \WriteData_IBUF[9]_inst 
       (.I(WriteData[9]),
        .O(WriteData_IBUF[9]));
  IBUF \WriteReg_IBUF[0]_inst 
       (.I(WriteReg[0]),
        .O(WriteReg_IBUF[0]));
  IBUF \WriteReg_IBUF[1]_inst 
       (.I(WriteReg[1]),
        .O(WriteReg_IBUF[1]));
  IBUF \WriteReg_IBUF[2]_inst 
       (.I(WriteReg[2]),
        .O(WriteReg_IBUF[2]));
  IBUF \WriteReg_IBUF[3]_inst 
       (.I(WriteReg[3]),
        .O(WriteReg_IBUF[3]));
  IBUF \WriteReg_IBUF[4]_inst 
       (.I(WriteReg[4]),
        .O(WriteReg_IBUF[4]));
  IBUF \WriteReg_IBUF[5]_inst 
       (.I(WriteReg[5]),
        .O(WriteReg_IBUF[5]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_31_0_5
       (.ADDRA(ReadRegB_IBUF[4:0]),
        .ADDRB(ReadRegB_IBUF[4:0]),
        .ADDRC(ReadRegB_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[1:0]),
        .DIB(WriteData_IBUF[3:2]),
        .DIC(WriteData_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataB0[1:0]),
        .DOB(ReadDataB0[3:2]),
        .DOC(ReadDataB0[5:4]),
        .DOD(NLW_registers_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'h5555555400000000)) 
    registers_reg_r1_0_31_0_5_i_1
       (.I0(WriteReg_IBUF[5]),
        .I1(ReadRegB_IBUF[3]),
        .I2(ReadRegB_IBUF[4]),
        .I3(registers_reg_r1_0_31_0_5_i_2_n_0),
        .I4(ReadRegB_IBUF[2]),
        .I5(RegWrite_IBUF),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'hE)) 
    registers_reg_r1_0_31_0_5_i_2
       (.I0(ReadRegB_IBUF[1]),
        .I1(ReadRegB_IBUF[0]),
        .O(registers_reg_r1_0_31_0_5_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_31_12_17
       (.ADDRA(ReadRegB_IBUF[4:0]),
        .ADDRB(ReadRegB_IBUF[4:0]),
        .ADDRC(ReadRegB_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[13:12]),
        .DIB(WriteData_IBUF[15:14]),
        .DIC(WriteData_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataB0[13:12]),
        .DOB(ReadDataB0[15:14]),
        .DOC(ReadDataB0[17:16]),
        .DOD(NLW_registers_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_31_18_23
       (.ADDRA(ReadRegB_IBUF[4:0]),
        .ADDRB(ReadRegB_IBUF[4:0]),
        .ADDRC(ReadRegB_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[19:18]),
        .DIB(WriteData_IBUF[21:20]),
        .DIC(WriteData_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataB0[19:18]),
        .DOB(ReadDataB0[21:20]),
        .DOC(ReadDataB0[23:22]),
        .DOD(NLW_registers_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_31_24_29
       (.ADDRA(ReadRegB_IBUF[4:0]),
        .ADDRB(ReadRegB_IBUF[4:0]),
        .ADDRC(ReadRegB_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[25:24]),
        .DIB(WriteData_IBUF[27:26]),
        .DIC(WriteData_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataB0[25:24]),
        .DOB(ReadDataB0[27:26]),
        .DOC(ReadDataB0[29:28]),
        .DOD(NLW_registers_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_31_30_31
       (.ADDRA(ReadRegB_IBUF[4:0]),
        .ADDRB(ReadRegB_IBUF[4:0]),
        .ADDRC(ReadRegB_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataB0[31:30]),
        .DOB(NLW_registers_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_registers_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_registers_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r1_0_31_6_11
       (.ADDRA(ReadRegB_IBUF[4:0]),
        .ADDRB(ReadRegB_IBUF[4:0]),
        .ADDRC(ReadRegB_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[7:6]),
        .DIB(WriteData_IBUF[9:8]),
        .DIC(WriteData_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataB0[7:6]),
        .DOB(ReadDataB0[9:8]),
        .DOC(ReadDataB0[11:10]),
        .DOD(NLW_registers_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_31_0_5
       (.ADDRA(ReadRegA_IBUF[4:0]),
        .ADDRB(ReadRegA_IBUF[4:0]),
        .ADDRC(ReadRegA_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[1:0]),
        .DIB(WriteData_IBUF[3:2]),
        .DIC(WriteData_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataA0[1:0]),
        .DOB(ReadDataA0[3:2]),
        .DOC(ReadDataA0[5:4]),
        .DOD(NLW_registers_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_31_12_17
       (.ADDRA(ReadRegA_IBUF[4:0]),
        .ADDRB(ReadRegA_IBUF[4:0]),
        .ADDRC(ReadRegA_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[13:12]),
        .DIB(WriteData_IBUF[15:14]),
        .DIC(WriteData_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataA0[13:12]),
        .DOB(ReadDataA0[15:14]),
        .DOC(ReadDataA0[17:16]),
        .DOD(NLW_registers_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_31_18_23
       (.ADDRA(ReadRegA_IBUF[4:0]),
        .ADDRB(ReadRegA_IBUF[4:0]),
        .ADDRC(ReadRegA_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[19:18]),
        .DIB(WriteData_IBUF[21:20]),
        .DIC(WriteData_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataA0[19:18]),
        .DOB(ReadDataA0[21:20]),
        .DOC(ReadDataA0[23:22]),
        .DOD(NLW_registers_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_31_24_29
       (.ADDRA(ReadRegA_IBUF[4:0]),
        .ADDRB(ReadRegA_IBUF[4:0]),
        .ADDRC(ReadRegA_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[25:24]),
        .DIB(WriteData_IBUF[27:26]),
        .DIC(WriteData_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataA0[25:24]),
        .DOB(ReadDataA0[27:26]),
        .DOC(ReadDataA0[29:28]),
        .DOD(NLW_registers_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_31_30_31
       (.ADDRA(ReadRegA_IBUF[4:0]),
        .ADDRB(ReadRegA_IBUF[4:0]),
        .ADDRC(ReadRegA_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataA0[31:30]),
        .DOB(NLW_registers_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_registers_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_registers_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    registers_reg_r2_0_31_6_11
       (.ADDRA(ReadRegA_IBUF[4:0]),
        .ADDRB(ReadRegA_IBUF[4:0]),
        .ADDRC(ReadRegA_IBUF[4:0]),
        .ADDRD(WriteReg_IBUF[4:0]),
        .DIA(WriteData_IBUF[7:6]),
        .DIB(WriteData_IBUF[9:8]),
        .DIC(WriteData_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(ReadDataA0[7:6]),
        .DOB(ReadDataA0[9:8]),
        .DOC(ReadDataA0[11:10]),
        .DOD(NLW_registers_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(p_0_in));
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
