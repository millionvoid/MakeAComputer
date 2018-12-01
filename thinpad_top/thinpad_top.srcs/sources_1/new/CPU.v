`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 04:01:06
// Design Name: 
// Module Name: CPU
// Project Name: MIPS32 Computer
// Target Devices: 
// Tool Versions: 
// Description: 
//////////////////////////////////////////////////////////////////////////////////
 module CPU(
    input wire clk,
    input wire rst,
    output wire[31:0] InstAddress,
    input wire[31:0] InstInput,
    output wire[31:0] MemAddress,
    input wire[31:0] MemReadData,
    output wire[31:0] MemWriteData,
    output wire MemReadEN,
    output wire MemWriteEN,
    output wire [1:0]MemReadSelect,
    output wire MemWriteSelect
    );
 //Before IF
wire [31:0]RegPC;
 //IF-ID
wire [31:0]IFIDNPC;
wire [31:0]IFIDInstruction;
 //ID-EX
wire [31:0]IDEXNPC;
wire [5:0]IDEXRegSrcA;
wire [5:0]IDEXRegSrcB;
wire [5:0]IDEXRegDest;
wire [31:0]IDEXRegDataA;
wire [31:0]IDEXRegDataB;
wire [31:0]IDEXExtendImm;
wire [3:0]IDEXALUOp;
wire IDEXALUSrc;
wire [1:0]IDEXEXResultSelect;
wire IDEXMemRead;
wire IDEXMemWrite;
wire [1:0]IDEXBranchType;
wire [1:0]IDEXJumpType;
wire [1:0]IDEXMemReadSelect;
wire IDEXMemWriteSelect;
wire IDEXRegWrite;
wire IDEXMemToReg;
wire IDEXIsMOVZ;
 //EX-MEM
wire [31:0]EXMEMEXResult;
wire [5:0]EXMEMRegDest;
wire [31:0]EXMEMRegDataB;
wire EXMEMMemRead;
wire EXMEMMemWrite;
wire [1:0]EXMEMBranchType;
wire [1:0]EXMEMJumpType;
wire [1:0]EXMEMMemReadSelect;
wire EXMEMMemWriteSelect;
wire EXMEMRegWrite;
wire EXMEMMemToReg;
 //MEM-WB
wire [31:0]MEMWBMemReadData;
wire [31:0]MEMWBEXResult;
wire [5:0]MEMWBRegDest;
wire MEMWBRegWrite;
wire MEMWBMemToReg;
wire [31:0]NewPC;
wire PCclr;
wire PCwriteEN;
RegPC RegPC_c(
    .clk(clk),
    .rst(rst),
    .clr(PCclr),
    .writeEN(PCwriteEN),
    
    .PCInput(NewPC),
    
    .PCOutput(RegPC)
);
assign InstAddress=RegPC;
 //TODO: Adder32
wire [31:0]IFNPC;
Adder32 PCAdder(
    .InputA(RegPC),
    .InputB(4),
    .Output(IFNPC)
);
wire IFIDclr;
wire IFIDwriteEN;
RegIFID RegIFID_c(
    .clk(clk),
    .rst(rst),
    .clr(IFIDclr),
    .writeEN(IFIDwriteEN),
    
    .NPCInput(IFNPC),
    .InstructionInput(InstInput),
    
    .NPCOutput(IFIDNPC),
    .InstructionOutput(IFIDInstruction)
);
 //TODO:Extender
wire [31:0]IDExtendImm;
Extender Extender_c(
    .Instruction(IFIDInstruction),
    .ExtendImm(IDExtendImm)
);
 //TODO:Controller
wire [1:0]IDEXResultSelect;
wire IDRegWrite;
wire IDMemRead;
wire IDMemWrite;
wire [1:0]IDBranchType;
wire [1:0]IDJumpType;
wire [5:0]IDRegSrcA;
wire [5:0]IDRegSrcB;
wire [5:0]IDRegDest;
wire IDALUSrc;
wire IDMemToReg;
wire [1:0]IDMemReadSelect;
wire IDMemWriteSelect;
wire IDIsMOVZ;
wire [3:0]IDALUOp;
Controller Controller_c(
    .Instruction(IFIDInstruction),
    .EXResultSelect(IDEXResultSelect),
    .RegWrite(IDRegWrite),
    .MemRead(IDMemRead),
    .MemWrite(IDMemWrite),
    .BranchType(IDBranchType),
    .JumpType(IDJumpType),
    .RegSrcA(IDRegSrcA),
    .RegSrcB(IDRegSrcB),
    .RegDest(IDRegDest),
    .ALUSrc(IDALUSrc),
    .MemToReg(IDMemToReg),
    .MemReadSelect(IDMemReadSelect),
    .MemWriteSelect(IDMemWriteSelect),
    .IsMOVZ(IDIsMOVZ),
    .ALUOp(IDALUOp)
);
 //TODO:RegisterFile
wire [31:0]IDRegDataA;
wire [31:0]IDRegDataB;
wire [31:0]WBWriteData; //WriteBack
RegisterFile RegisterFile_c(
    //input
    .ReadRegA(IDRegSrcA),
    .ReadRegB(IDRegSrcB),
    .NPCInput(IFIDNPC),
    
    //output
    .ReadDataA(IDRegDataA),
    .ReadDataB(IDRegDataB),
    
    //input
    .WriteReg(MEMWBRegDest),
    .WriteData(WBWriteData)
);
 //HazardUnit
wire IDHazardHappen;
HazardUnit HazardUnit_c(
    .IDEXMemRead(IDEXMemRead),
    .IDEXRegDest(IDEXRegDest),
    .IDRegSrcA(IDRegSrcA),
    .IDRegSrcB(IDRegSrcB),
    .HazardHappen(IDHazardHappen)
);
wire IDEXclr;
wire IDEXwriteEN;
RegIDEX RegIDEX_c(
    .clk(clk),
    .rst(rst),
    .clr(IDEXclr),
    .writeEN(IDEXwriteEN),
    
    .NPCInput(IFIDNPC),
        
    .RegSrcAInput(IDRegSrcA),
    .RegSrcBInput(IDRegSrcB),
    .RegDestInput(IDRegDest),
    
    .RegDataAInput(),
    .RegDataBInput(),
    
    .ExtendImmInput(IDExtendImm),
    
    .ALUOpInput(IDALUOp),
    .ALUSrcInput(IDALUSrc),
    .EXResultSelectInput(IDEXResultSelect),
    
    .MemReadInput(IDMemRead),
    .MemWriteInput(IDMemWrite),
    .BranchTypeInput(IDBranchType),
    .JumpTypeInput(IDJumpType),
    .MemReadSelectInput(IDMemReadSelect),
    .MemWriteSelectInput(IDMemWriteSelect),
    
    .RegWriteInput(IDRegWrite),
    .MemToRegInput(IDMemToReg),
    
    .IsMOVZInput(IDIsMOVZ),
    
    .NPCOutput(IDEXNPC),
        
    .RegSrcAOutput(IDEXRegSrcA),
    .RegSrcBOutput(IDEXRegSrcB),
    .RegDestOutput(IDEXRegDest),
    
    .RegDataAOutput(IDEXRegDataA),
    .RegDataBOutput(IDEXRegDataB),
    
    .ExtendImmOutput(IDEXExtendImm),
    
    .ALUOpOutput(IDEXALUOp),
    .ALUSrcOutput(IDEXALUSrc),
    .EXResultSelectOutput(IDEXEXResultSelect),
    
    .MemReadOutput(IDEXMemRead),
    .MemWriteOutput(IDEXMemWrite),
    .BranchTypeOutput(IDEXBranchType),
    .JumpTypeOutput(IDEXJumpType),
    .MemReadSelectOutput(IDEXMemReadSelect),
    .MemWriteSelectOutput(IDEXMemReadSelect),
    
    .RegWriteOutput(IDEXRegWrite),
    .MemToRegOutput(IDEXMemToReg),
    
    .IsMOVZOutput(IDEXIsMOVZ)
);
 //ForwardUnit
wire [1:0]EXForwardA;
wire [1:0]EXForwardB;
ForwardUnit ForwardUnit_c(
    // input
    .EXMEMRegWrite(EXMEMRegWrite),
    .MEMWBRegWrite(MEMWBRegWrite),
    .EXMEMRegDest(EXMEMRegDest),
    .MEMWBRegDest(MEMWBRegDest),
    .IDEXRegSrcA(IDEXRegSrcA),
    .IDEXRegSrcB(IDEXRegSrcB),
    
    // output
    .ForwardA(EXForwardA),
    .ForwardB(EXForwardB)
);
 //Select RegA and RegB
wire [31:0]EXRegA;
wire [31:0]EXRegB;
Selector32_4to1 EXRegASelector(
    .InputA(IDEXRegDataA),
    .InputB(EXMEMEXResult),
    .InputC(WBWriteData),
    .InputD(0),
    .Control(EXForwardA),
    .Output(EXRegA)
);
Selector32_4to1 EXRegBSelector(
    .InputA(IDEXRegDataB),
    .InputB(EXMEMEXResult),
    .InputC(WBWriteData),
    .InputD(0),
    .Control(EXForwardB),
    .Output(EXRegB)
);
 //Select ALUSrc
wire [31:0]EXInputB;
Selector32_2to1 EXInputBSelector(
    .InputA(EXRegB),
    .InputB(IDEXExtendImm),
    .Control(IDEXALUSrc),
    .Output(EXInputB)
);
 //ALU
wire [31:0]EXOutput;
ALU ALU_c(
    .ALUOp(IDEXALUOp),
    .InputA(EXRegA),
    .InputB(EXInputB),
    .Output(EXOutput)
);
 //Select EXResult
wire [31:0]EXEXResult;
Selector32_4to1 EXEXResultSelector(
    .InputA(EXOutput),
    .InputB(EXRegA),
    .InputC(EXInputB),
    .InputD(4'b0),
    .Control(IDEXEXResultSelect),
    .Output(EXEXResult)
);
 //MOVZController
wire EXRegWrite;
MOVZController MOVZController_c(
    .EXResult(EXOutput),
    .IsMOVZ(IDEXIsMOVZ),
    .OldRegWrite(IDEXRegWrite),
    .NewRegWrite(EXRegWrite)
);
 //Calculate BranchPC
wire [31:0]EXBranchPC;
Adder32 BranchPCAdder(
    .InputA(IDEXNPC),
    .InputB(IDEXExtendImm),
    .Output(EXBranchPC)
);
 //BranchSelector
wire [1:0]EXBranchSelect;
wire EXBranchHappen;
BranchSelector BranchSelector_c(
    // input
    .BranchType(IDEXBranchType),
    .JumpType(IDEXJumpType),
    .EXRegA(EXRegA),
    .EXRegB(EXRegB),
    
    // output
    .BranchSelect(EXBranchSelect),
    .BranchHappen(EXBranchHappen)
);
 //Select NewPC
Selector32_4to1 NewPCSelector(
    .InputA(IDEXNPC),
    .InputB(EXBranchPC),
    .InputC(EXRegA),
    .InputD(IDEXExtendImm),
    .Control(EXBranchSelect),
    .Output(NewPC)
);
wire EXMEMclr;
wire EXMEMwriteEN;
RegEXMEM RegEXMEM_c(
    .clk(clk),
    .rst(rst),
    .clr(EXMEMclr),
    .writeEN(EXMEMwriteEN),
    
    .EXResultInput(EXEXResult),
    .RegDestInput(IDEXRegDest),
    .RegDataBInput(EXRegB),
    
    .MemReadInput(IDEXMemRead),
    .MemWriteInput(IDEXMemWrite),
    .BranchTypeInput(IDEXBranchType),
    .JumpTypeInput(IDEXJumpType),
    .MemReadSelectInput(IDEXMemReadSelect),
    .MemWriteSelectInput(IDEXMemWriteSelect),
    
    .RegWriteInput(EXRegWrite),
    .MemToRegInput(IDEXMemToReg),
    
    .EXResultOutput(EXMEMEXResult),
    .RegDestOutput(EXMEMRegDest),
    .RegDataBOutput(EXMEMRegDataB),
    
    .MemReadOutput(EXMEMMemRead),
    .MemWriteOutput(EXMEMMemWrite),
    .BranchTypeOutput(EXMEMBranchType),
    .JumpTypeOutput(EXMEMJumpType),
    .MemReadSelectOutput(EXMEMMemReadSelect),
    .MemWriteSelectOutput(EXMEMMemWriteSelect),
    
    .RegWriteOutput(EXMEMRegWrite),
    .MemToRegOutput(EXMEMMemToReg)
);
assign MemAddress=EXMEMEXResult;
assign MemWriteData=EXMEMRegDataB;
assign MemReadEN=EXMEMMemRead;
assign MemWriteEN=EXMEMMemWrite;
assign MemReadSelect=EXMEMMemReadSelect;
assign MemWriteSelect=EXMEMMemWriteSelect;
wire MEMWBclr;
wire MEMWBwriteEN;
RegMEMWB RegMEMWB_c(
    .clk(clk),
    .rst(rst),
    .clr(MEMWBclr),
    .writeEN(MEMWBwriteEN),
    
    .MemReadDataInput(MemReadData),
    .EXResultInput(EXMEMEXResult),
    .RegDestInput(EXMEMRegDest),
    
    .RegWriteInput(EXMEMRegWrite),
    .MemToRegInput(EXMEMMemToReg),
     
    .MemReadDataOutput(MEMWBMemReadData),
    .EXResultOutput(MEMWBEXResult),
    .RegDestOutput(MEMWBRegDest),
    
    .RegWriteOutput(MEMWBRegWrite),
    .MemToRegOutput(MEMWBMemToReg)
);
 //Select WriteData
Selector32_2to1 WBWriteDataSelector(
    .InputA(MEMWBEXResult),
    .InputB(MEMWBMemReadData),
    .Control(MEMWBMemToReg),
    .Output(WBWriteData)
);
 //StallUnit
StallUnit StallUnit_c(
    .BranchHappen(EXBranchHappen),
    .HazardHappen(IDHazardHappen),
    .PCWriteEN(PCwriteEN),
    .PCClear(PCclr),
    .IFIDWriteEN(IFIDwriteEN),
    .IFIDClear(IFIDclr),
    .IDEXWriteEN(IDEXwriteEN),
    .IDEXClear(IDEXclr),
    .EXMEMWriteEN(EXMEMwriteEN),
    .EXMEMClear(EXMEMclr),
    .MEMWBWriteEN(MEMWBwriteEN),
    .MEMWBClear(MEMWBclr)
);
endmodule