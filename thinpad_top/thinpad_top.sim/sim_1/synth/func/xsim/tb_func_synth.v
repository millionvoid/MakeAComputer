// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec  1 15:10:20 2018
// Host        : LAPTOP-98AM3G01 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/3-Autumn/Organization
//               Principles/MakeComputer/FinalProjectFolder/MakeAComputer/thinpad_top/thinpad_top.sim/sim_1/synth/func/xsim/tb_func_synth.v}
// Design      : MOVZController
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module MOVZController
   (EXResult,
    IsMOVZ,
    OldRegWrite,
    NewRegWrite);
  input [31:0]EXResult;
  input IsMOVZ;
  input OldRegWrite;
  output NewRegWrite;

  wire [31:0]EXResult;
  wire [31:0]EXResult_IBUF;
  wire IsMOVZ;
  wire IsMOVZ_IBUF;
  wire NewRegWrite;
  wire NewRegWrite_OBUF;
  wire NewRegWrite_OBUF_inst_i_2_n_0;
  wire NewRegWrite_OBUF_inst_i_3_n_0;
  wire NewRegWrite_OBUF_inst_i_4_n_0;
  wire NewRegWrite_OBUF_inst_i_5_n_0;
  wire NewRegWrite_OBUF_inst_i_6_n_0;
  wire NewRegWrite_OBUF_inst_i_7_n_0;
  wire OldRegWrite;
  wire OldRegWrite_IBUF;

  IBUF \EXResult_IBUF[0]_inst 
       (.I(EXResult[0]),
        .O(EXResult_IBUF[0]));
  IBUF \EXResult_IBUF[10]_inst 
       (.I(EXResult[10]),
        .O(EXResult_IBUF[10]));
  IBUF \EXResult_IBUF[11]_inst 
       (.I(EXResult[11]),
        .O(EXResult_IBUF[11]));
  IBUF \EXResult_IBUF[12]_inst 
       (.I(EXResult[12]),
        .O(EXResult_IBUF[12]));
  IBUF \EXResult_IBUF[13]_inst 
       (.I(EXResult[13]),
        .O(EXResult_IBUF[13]));
  IBUF \EXResult_IBUF[14]_inst 
       (.I(EXResult[14]),
        .O(EXResult_IBUF[14]));
  IBUF \EXResult_IBUF[15]_inst 
       (.I(EXResult[15]),
        .O(EXResult_IBUF[15]));
  IBUF \EXResult_IBUF[16]_inst 
       (.I(EXResult[16]),
        .O(EXResult_IBUF[16]));
  IBUF \EXResult_IBUF[17]_inst 
       (.I(EXResult[17]),
        .O(EXResult_IBUF[17]));
  IBUF \EXResult_IBUF[18]_inst 
       (.I(EXResult[18]),
        .O(EXResult_IBUF[18]));
  IBUF \EXResult_IBUF[19]_inst 
       (.I(EXResult[19]),
        .O(EXResult_IBUF[19]));
  IBUF \EXResult_IBUF[1]_inst 
       (.I(EXResult[1]),
        .O(EXResult_IBUF[1]));
  IBUF \EXResult_IBUF[20]_inst 
       (.I(EXResult[20]),
        .O(EXResult_IBUF[20]));
  IBUF \EXResult_IBUF[21]_inst 
       (.I(EXResult[21]),
        .O(EXResult_IBUF[21]));
  IBUF \EXResult_IBUF[22]_inst 
       (.I(EXResult[22]),
        .O(EXResult_IBUF[22]));
  IBUF \EXResult_IBUF[23]_inst 
       (.I(EXResult[23]),
        .O(EXResult_IBUF[23]));
  IBUF \EXResult_IBUF[24]_inst 
       (.I(EXResult[24]),
        .O(EXResult_IBUF[24]));
  IBUF \EXResult_IBUF[25]_inst 
       (.I(EXResult[25]),
        .O(EXResult_IBUF[25]));
  IBUF \EXResult_IBUF[26]_inst 
       (.I(EXResult[26]),
        .O(EXResult_IBUF[26]));
  IBUF \EXResult_IBUF[27]_inst 
       (.I(EXResult[27]),
        .O(EXResult_IBUF[27]));
  IBUF \EXResult_IBUF[28]_inst 
       (.I(EXResult[28]),
        .O(EXResult_IBUF[28]));
  IBUF \EXResult_IBUF[29]_inst 
       (.I(EXResult[29]),
        .O(EXResult_IBUF[29]));
  IBUF \EXResult_IBUF[2]_inst 
       (.I(EXResult[2]),
        .O(EXResult_IBUF[2]));
  IBUF \EXResult_IBUF[30]_inst 
       (.I(EXResult[30]),
        .O(EXResult_IBUF[30]));
  IBUF \EXResult_IBUF[31]_inst 
       (.I(EXResult[31]),
        .O(EXResult_IBUF[31]));
  IBUF \EXResult_IBUF[3]_inst 
       (.I(EXResult[3]),
        .O(EXResult_IBUF[3]));
  IBUF \EXResult_IBUF[4]_inst 
       (.I(EXResult[4]),
        .O(EXResult_IBUF[4]));
  IBUF \EXResult_IBUF[5]_inst 
       (.I(EXResult[5]),
        .O(EXResult_IBUF[5]));
  IBUF \EXResult_IBUF[6]_inst 
       (.I(EXResult[6]),
        .O(EXResult_IBUF[6]));
  IBUF \EXResult_IBUF[7]_inst 
       (.I(EXResult[7]),
        .O(EXResult_IBUF[7]));
  IBUF \EXResult_IBUF[8]_inst 
       (.I(EXResult[8]),
        .O(EXResult_IBUF[8]));
  IBUF \EXResult_IBUF[9]_inst 
       (.I(EXResult[9]),
        .O(EXResult_IBUF[9]));
  IBUF IsMOVZ_IBUF_inst
       (.I(IsMOVZ),
        .O(IsMOVZ_IBUF));
  OBUF NewRegWrite_OBUF_inst
       (.I(NewRegWrite_OBUF),
        .O(NewRegWrite));
  LUT5 #(
    .INIT(32'hF4444444)) 
    NewRegWrite_OBUF_inst_i_1
       (.I0(IsMOVZ_IBUF),
        .I1(OldRegWrite_IBUF),
        .I2(NewRegWrite_OBUF_inst_i_2_n_0),
        .I3(NewRegWrite_OBUF_inst_i_3_n_0),
        .I4(NewRegWrite_OBUF_inst_i_4_n_0),
        .O(NewRegWrite_OBUF));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    NewRegWrite_OBUF_inst_i_2
       (.I0(NewRegWrite_OBUF_inst_i_5_n_0),
        .I1(NewRegWrite_OBUF_inst_i_6_n_0),
        .I2(NewRegWrite_OBUF_inst_i_7_n_0),
        .I3(EXResult_IBUF[1]),
        .I4(EXResult_IBUF[0]),
        .I5(OldRegWrite_IBUF),
        .O(NewRegWrite_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    NewRegWrite_OBUF_inst_i_3
       (.I0(EXResult_IBUF[28]),
        .I1(EXResult_IBUF[29]),
        .I2(EXResult_IBUF[26]),
        .I3(EXResult_IBUF[27]),
        .I4(EXResult_IBUF[31]),
        .I5(EXResult_IBUF[30]),
        .O(NewRegWrite_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    NewRegWrite_OBUF_inst_i_4
       (.I0(EXResult_IBUF[22]),
        .I1(EXResult_IBUF[23]),
        .I2(EXResult_IBUF[20]),
        .I3(EXResult_IBUF[21]),
        .I4(EXResult_IBUF[25]),
        .I5(EXResult_IBUF[24]),
        .O(NewRegWrite_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    NewRegWrite_OBUF_inst_i_5
       (.I0(EXResult_IBUF[10]),
        .I1(EXResult_IBUF[11]),
        .I2(EXResult_IBUF[8]),
        .I3(EXResult_IBUF[9]),
        .I4(EXResult_IBUF[13]),
        .I5(EXResult_IBUF[12]),
        .O(NewRegWrite_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    NewRegWrite_OBUF_inst_i_6
       (.I0(EXResult_IBUF[16]),
        .I1(EXResult_IBUF[17]),
        .I2(EXResult_IBUF[14]),
        .I3(EXResult_IBUF[15]),
        .I4(EXResult_IBUF[19]),
        .I5(EXResult_IBUF[18]),
        .O(NewRegWrite_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    NewRegWrite_OBUF_inst_i_7
       (.I0(EXResult_IBUF[4]),
        .I1(EXResult_IBUF[5]),
        .I2(EXResult_IBUF[2]),
        .I3(EXResult_IBUF[3]),
        .I4(EXResult_IBUF[7]),
        .I5(EXResult_IBUF[6]),
        .O(NewRegWrite_OBUF_inst_i_7_n_0));
  IBUF OldRegWrite_IBUF_inst
       (.I(OldRegWrite),
        .O(OldRegWrite_IBUF));
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
