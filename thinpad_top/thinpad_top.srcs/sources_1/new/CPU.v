`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 06:16:58
// Design Name: 
// Module Name: CPU
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
wire IFNPC;
wire IFInstruction;

//ID-EX
wire IDNPC;

wire IDRegSrcA;
wire IDRegSrcB;
wire IDRegDest;

wire IDRegDataA;
wire IDRegDataB;

wire IDExtendImm;

wire IDALUOp;
wire IDALUSrc;
wire IDEXResultSelect;

wire IDMemRead;
wire IDMemWrite;
wire IDBranchType;
wire IDJumpType;
wire IDMemReadSelect;
wire IDMemWriteSelect;

wire IDRegWrite;
wire IDMemToReg;

//EX-MEM
wire EXEXResult;
wire EXRegDest;
wire EXRegDataB;

wire EXMemRead;
wire EXMemWrite;
wire EXBranchType;
wire EXJumpType;
wire EXMemReadSelect;
wire EXMemWriteSelect;

wire EXRegWrite;
wire EXMemToReg;

//MEM-WB
wire MEMMemReadData;
wire MEMEXResult;
wire MEMRegDest;

wire MEMRegWrite;
wire MEMMemToReg;

RegPC RegPC_c(
    .clk(clk),
    .rst(rst),
    .clr(),
    .writeEN(),
    
    .PCInput(),
    
    .PCOutput(RegPC)
);

RegIFID RegIFID_c(
    .clk(clk),
    .rst(rst),
    .clr(),
    .writeEN(),
    
    .NPCInput(),
    .InstructionInput(),
    
    .NPCOutput(IFNPC),
    .InstructionOutput(IFInstruction)
);

RegIDEX RegIDEX_c(
    .clk(clk),
    .rst(rst),
    .clr(),
    .writeEN(),
    
    .NPCInput(),
        
    .RegSrcAInput(),
    .RegSrcBInput(),
    .RegDestInput(),
    
    .RegDataAInput(),
    .RegDataBInput(),
    
    .ExtendImmInput(),
    
    .ALUOpInput(),
    .ALUSrcInput(),
    .EXResultSelectInput(),
    
    .MemReadInput(),
    .MemWriteInput(),
    .BranchTypeInput(),
    .JumpTypeInput(),
    .MemReadSelectInput(),
    .MemWriteSelectInput(),
    
    .RegWriteInput(),
    .MemToRegInput(),
    
    .NPCOutput(IDNPC),
        
    .RegSrcAOutput(IDRegSrcA),
    .RegSrcBOutput(IDRegSrcB),
    .RegDestOutput(IDRegDest),
    
    .RegDataAOutput(IDRegDataA),
    .RegDataBOutput(IDRegDataB),
    
    .ExtendImmOutput(IDExtendImm),
    
    .ALUOpOutput(IDALUOp),
    .ALUSrcOutput(IDALUSrc),
    .EXResultSelectOutput(IDEXResultSelect),
    
    .MemReadOutput(IDMemRead),
    .MemWriteOutput(IDMemWrite),
    .BranchTypeOutput(IDBranchType),
    .JumpTypeOutput(IDJumpType),
    .MemReadSelectOutput(IDMemReadSelect),
    .MemWriteSelectOutput(IDMemReadSelect),
    
    .RegWriteOutput(IDRegWrite),
    .MemToRegOutput(IDMemToReg)
);

RegEXMEM RegEXMEM_c(
    .clk(clk),
    .rst(rst),
    .clr(),
    .writeEN(),
    
    .EXResultInput(),
    .RegDestInput(),
    .RegDataBInput(),
    
    .MemReadInput(),
    .MemWriteInput(),
    .BranchTypeInput(),
    .JumpTypeInput(),
    .MemReadSelectInput(),
    .MemWriteSelectInput(),
    
    .RegWriteInput(),
    .MemToRegInput(),
    
    .EXResultOutput(EXEXResult),
    .RegDestOutput(EXRegDest),
    .RegDataBOutput(EXRegDataB),
    
    .MemReadOutput(EXMemRead),
    .MemWriteOutput(EXMemWrite),
    .BranchTypeOutput(EXBranchType),
    .JumpTypeOutput(EXJumpType),
    .MemReadSelectOutput(EXMemReadSelect),
    .MemWriteSelectOutput(EXMemReadSelect),
    
    .RegWriteOutput(EXRegWrite),
    .MemToRegOutput(EXMemToReg)
);

RegMEMWB RegMEMWB_c(
    .clk(clk),
    .rst(rst),
    .clr(),
    .writeEN(),
    
    .MemReadDataInput(),
    .EXResultInput(),
    .RegDestInput(),
    
    .RegWriteInput(),
    .MemToRegInput(),
     
    .MemReadDataOutput(MEMMemReadData),
    .EXResultOutput(MEMEXResult),
    .RegDestOutput(MEMRegDest),
    
    .RegWriteOutput(MEMRegWrite),
    .MemToRegOutput(MEMMemToReg)
);


endmodule
