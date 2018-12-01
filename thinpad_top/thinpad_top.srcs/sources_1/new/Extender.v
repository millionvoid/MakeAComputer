`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/12/01 17:28:59
// Design Name: 
// Module Name: Extender
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

module Extender(
	input wire[31:0]Instruction,
	output reg[31:0]ExtendImm//提取出立即数，符号扩展后输出
    );

//function [31:0] ImmExtender_5to32; 
//    input wire[4:0]InImm;
//    begin
//		if (InImm[4]==0) begin
//			ImmExtender_5to32={27'b000000000000000000000000000,InImm};
//		end
//		else begin
//			ImmExtender_5to32={27'b111111111111111111111111111,InImm};
//		end
//	end
//endfunction

//function [31:0] ImmExtender_16to32; 
//    input wire[15:0]InImm;
//	begin
//		if (InImm[15]==0) begin
//			ImmExtender_16to32={16'b0000000000000000,InImm};
//		end
//		else begin
//			ImmExtender_16to32={16'b1111111111111111,InImm};
//		end
//	end
//endfunction

//always @(*) begin
//	case (Instruction[31:26])
//		6'b0:begin
//			case (Instruction[5:0])
//				6'b100001://ADDU
//				begin
//					{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//					{2'b0,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[25:21],Instruction[20:16],1'b1,1'b0,2'b0,1'b0,1'b0,4'h3};
//				end
//				6'b001000://JR
//				begin
//					{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//					{2'b00,1'b0,1'b0,1'b0,2'b0,2'b10,Instruction[25:21],Instruction[25:21],5'b0,1'b0,1'b0,2'b0,1'b0,1'b0,4'h0};
//				end
//				6'b100101://OR
//				begin
//					{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//					{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[20:16],Instruction[15:11],1'b0,1'b0,2'b0,1'b0,1'b0,4'h5};
//				end
//				6'b000000://SLL
//					if(Instruction!=0)
//						begin
//							{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//							{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[20:16],Instruction[20:16],Instruction[15:11],1'b0,1'b0,2'b0,1'b0,1'b0,4'h8};
//						end
//					else
//						begin
//							{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//							{2'b00,1'b0,1'b0,1'b0,2'b0,2'b0,5'b0,5'b0,5'b0,1'b0,1'b0,2'b0,1'b0,1'b0,4'h0};
//						end
//				6'b000010://SRL
//				begin
//					{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//					{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[20:16],Instruction[20:16],Instruction[15:11],1'b0,1'b0,2'b0,1'b0,1'b0,4'h9};
//				end
//				6'b100110://XOR
//				begin
//					{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//					{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[20:16],Instruction[15:11],1'b0,1'b0,2'b0,1'b0,1'b0,4'h6};
//				end
//				6'b000011:ExtendImm<=ExtInstruction[10:6];
//				default:ExtendImm<=0;
//			endcase
//		end
//		6'b001001 ://ADDIU
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[25:21],Instruction[20:16],1'b1,1'b0,2'b0,1'b0,1'b0,4'h3};
//		end
//		6'b001100 ://ANDI 
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[25:21],Instruction[20:16],1'b1,1'b0,2'b0,1'b0,1'b0,4'h4};
//		end
//		6'b000100 ://BEQ 
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b0,1'b0,1'b0,2'b1,2'b0,Instruction[25:21],Instruction[20:16],5'b0,1'b1,1'b0,2'b0,1'b0,1'b0,4'h0};
//		end
//		6'b000111 ://BGTZ 
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b0,1'b0,1'b0,2'b11,2'b0,Instruction[25:21],Instruction[25:21],5'b0,1'b1,1'b0,2'b0,1'b0,1'b0,4'h0};
//		end
//		6'b000101 ://BNE 
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b0,1'b0,1'b0,2'b10,2'b0,Instruction[25:21],Instruction[20:16],5'b0,1'b1,1'b0,2'b0,1'b0,1'b0,4'h0};
//		end
//		6'b000010 ://J 
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b0,1'b0,1'b0,2'b0,2'b1,5'b0,5'b0,5'b0,1'b0,1'b0,2'b0,1'b0,1'b0,4'h0};
//		end
//		6'b000011 ://JAL
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,5'b0,5'b0,5'b0,1'b0,1'b0,2'b0,1'b0,1'b0,4'h0};
//		end
//		6'b100000 ://LB 
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b1,1'b1,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[25:21],Instruction[20:16],1'b1,1'b1,2'b1,1'b0,1'b0,4'h3};
//		end
//		6'b001111 ://LUI
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b0,1'b0,1'b0,2'b0,2'b0,5'b0,5'b0,Instruction[20:16],1'b1,1'b0,2'b0,1'b0,1'b0,4'hd};
//		end
//		6'b100011 ://LW
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b1,1'b1,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[25:21],Instruction[20:16],1'b1,1'b1,2'b0,1'b0,1'b0,4'h3};
//		end
//		6'b001101 ://ORI
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[25:21],Instruction[20:16],1'b1,1'b0,2'b0,1'b0,1'b0,4'h5};
//		end
//		6'b101000 ://SB
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b0,1'b0,1'b1,2'b0,2'b0,Instruction[25:21],Instruction[20:16],5'b0,1'b1,1'b0,2'b0,1'b1,1'b0,4'h3};
//		end
//		6'b101011 ://SW
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b0,1'b0,1'b1,2'b0,2'b0,Instruction[25:21],Instruction[20:16],5'b0,1'b1,1'b0,2'b0,1'b0,1'b0,4'h3};
//		end
//		6'b001110 ://XORI 
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[25:21],Instruction[20:16],1'b1,1'b0,2'b0,1'b0,1'b0,4'h6};
//		end
//		6'b100100 ://LBU
//		begin
//			{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			{2'b00,1'b1,1'b1,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[25:21],Instruction[20:16],1'b1,1'b1,2'b10,1'b0,1'b0,4'h3};
//		end
//		6'b011100:begin
//			case (Instruction[5:0])
//				6'b100000://CLZ
//				begin
//					{ExResultSelect,RegWrite,MemRead,MemWrite,BranchType[1:0],JumpType[1:0],RegSrcA[5:0],RegSrcB[5:0],RegDest[5:0],ALUSrc,MemToReg,MemReadSelect,MemWriteSelect,IsMOVZ,ALUOp[3:0]}=
//			        {2'b00,1'b1,1'b0,1'b0,2'b0,2'b0,Instruction[25:21],Instruction[20:16],Instruction[15:11],1'b0,1'b0,2'b0,1'b0,1'b0,4'hb};
//				end
//			endcase
//		end
//		default:;
//	endcase;
//end
endmodule
