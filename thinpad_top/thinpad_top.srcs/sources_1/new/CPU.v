`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 06:16:58
// Design Name: 
// Module Name: CPU
// Project Name: 
// Module Name: Controller
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
    output wire MemReadSelect,
    output wire MemWriteSelect
    );
 //Before IF
wire RegPC;
 //IF-ID
wire IFIDNPC;
wire IFIDInstruction;
 //ID-EX
wire IDEXNPC;
 wire IDEXRegSrcA;
wire IDEXRegSrcB;
wire IDEXRegDest;
 wire IDEXRegDataA;
wire IDEXRegDataB;
 wire IDEXExtendImm;
 wire IDEXALUOp;
wire IDEXALUSrc;
wire IDEXEXResultSelect;
 wire IDEXMemRead;
wire IDEXMemWrite;
wire IDEXBranchType;
wire IDEXJumpType;
wire IDEXMemReadSelect;
wire IDEXMemWriteSelect;
 wire IDEXRegWrite;
wire IDEXMemToReg;
 wire IDEXIsMOVZ;
 //EX-MEM
wire EXMEMEXResult;
wire EXMEMRegDest;
wire EXMEMRegDataB;
 wire EXMEMMemRead;
wire EXMEMMemWrite;
wire EXMEMBranchType;
wire EXMEMJumpType;
wire EXMEMMemReadSelect;
wire EXMEMMemWriteSelect;
 wire EXMEMRegWrite;
wire EXMEMMemToReg;
 //MEM-WB
wire MEMWBMemReadData;
wire MEMWBEXResult;
wire MEMWBRegDest;
 wire MEMWBRegWrite;
wire MEMWBMemToReg;
 wire NewPC;
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
wire IFNPC;
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
wire IDExtendImm;
Extender Extender_c(
    .Instruction(IFIDInstruction),
    .ExtendImm(IDExtendImm)
);
 //TODO:Controller
wire IDEXResultSelect;
wire IDRegWrite;
wire IDMemRead;
wire IDMemWrite;
wire IDBranchType;
wire IDJumpType;
wire IDRegSrcA;
wire IDRegSrcB;
wire IDRegDest;
wire IDALUSrc;
wire IDMemToReg;
wire IDMemReadSelect;
wire IDMemWriteSelect;
wire IDIsMOVZ;
wire IDALUOp;
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
wire IDRegDataA;
wire IDRegDataB;
wire WBWriteData; //WriteBack
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
wire EXForwardA;
wire EXForwardB;
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
wire EXRegA;
wire EXRegB;
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
wire EXInputB;
Selector32_2to1 EXInputBSelector(
    .InputA(EXRegB),
    .InputB(IDEXExtendImm),
    .Control(IDEXALUSrc),
    .Output(EXInputB)
);
 //ALU
wire EXOutput;
ALU ALU_c(
    .ALUOp(IDEXALUOp),
    .InputA(EXRegA),
    .InputB(EXInputB),
    .Output(EXOutput)
);
 //Select EXResult
wire EXEXResult;
Selector32_4to1 EXEXResultSelector(
    .InputA(EXOutput),
    .InputB(EXRegA),
    .InputC(EXInputB),
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
wire EXBranchPC;
Adder32 BranchPCAdder(
    .InputA(IDEXNPC),
    .InputB(IDEXExtendImm),
    .Output(EXBranchPC)
);
 //BranchSelector
wire EXBranchSelect;
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