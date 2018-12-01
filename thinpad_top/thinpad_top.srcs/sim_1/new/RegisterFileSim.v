`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 22:16:50
// Design Name: 
// Module Name: RegisterFileSim
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


module RegisterFileSim(
//    input wire clk,
//    input wire [5:0]ReadRegA,
//    input wire [5:0]ReadRegB,
//    input wire [31:0]NPCInput,
//    //input
//    input wire [5:0]WriteReg,
//    input wire [31:0]WriteData,
//    input wire RegWrite,
    
//    //output
//    output reg [31:0]ReadDataA,
//    output reg [31:0]ReadDataB
    );
    reg clk;
    reg [5:0]ReadRegA;
    reg [5:0]ReadRegB;
    reg [31:0]NPCInput;
    reg [5:0]WriteReg;
    reg [31:0]WriteData;
    reg RegWrite;
    reg [31:0]ReadDataA;
    reg [31:0]ReadDataB;

initial begin
    RegWrite=1;
    forever #1 clk= ~ clk;
end
initial begin
    #10 WriteReg=23;
    WriteData=46;
    #10 WriteReg=3;
    WriteData=6;
    ReadRegA=23;
    #10 WriteReg=0;
    WriteData=5;
    ReadRegA=3;
    #10 ReadRegA=0;                                       
end

RegisterFile c(
    .clk(clk),
    .ReadRegA(ReadRegA),
    .ReadRegB(ReadRegB),
    .NPCInput(NPCInput),
    .WriteReg(WriteReg),
    .WriteData(WriteData),
    .RegWrite(RegWrite),
    .ReadDataA(ReadDataA),
    .ReadDataB(ReadDataB)
);
endmodule
