`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 19:43:11
// Design Name: 
// Module Name: Controller
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


module Controller(
    input wire[31:0] Instruction,
    output wire[1:0] EXResultSelect,
    output wire RegWrite,
    output wire MemRead,
    output wire MemWrite,
    output wire[1:0] BranchType,
    output wire[1:0] JumpType,
    output wire[5:0] RegSrcA,
    output wire[5:0] RegSrcB,
    output wire[5:0] RegDest,
    output wire ALUSrc,
    output wire MemToReg,
    output wire[1:0] MemReadSelect,
    output wire MemWriteSelect,
    output wire IsMOVZ,
    output wire[3:0] ALUOp
    );
endmodule
