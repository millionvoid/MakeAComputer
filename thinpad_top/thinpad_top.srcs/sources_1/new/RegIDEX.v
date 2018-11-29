`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 06:29:29
// Design Name: 
// Module Name: RegIDEX
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


module RegIDEX(
    input wire clk,
    input wire rst,
    input wire clr,
    input wire writeEN,
    
    input wire NPCInput,
    
    input wire RegSrcAInput,
    input wire RegSrcBInput,
    input wire RegDestInput,
    
    input wire RegDataAInput,
    input wire RegDataBInput,
    
    input wire ExtendImmInput,
    
    input wire ALUOpInput,
    input wire ALUSrcInput,
    input wire EXResultSelectInput,
    
    input wire MemReadInput,
    input wire MemWriteInput,
    input wire BranchTypeInput,
    input wire JumpTypeInput,
    input wire MemReadSelectInput,
    input wire MemWriteSelectInput,
    
    input wire RegWriteInput,
    input wire MemToRegInput,
    
    output wire NPCOutput,
        
    output wire RegSrcAOutput,
    output wire RegSrcBOutput,
    output wire RegDestOutput,
    
    output wire RegDataAOutput,
    output wire RegDataBOutput,
    
    output wire ExtendImmOutput,
    
    output wire ALUOpOutput,
    output wire ALUSrcOutput,
    output wire EXResultSelectOutput,
    
    output wire MemReadOutput,
    output wire MemWriteOutput,
    output wire BranchTypeOutput,
    output wire JumpTypeOutput,
    output wire MemReadSelectOutput,
    output wire MemWriteSelectOutput,
    
    output wire RegWriteOutput,
    output wire MemToRegOutput
    );
    
reg NPC;

reg RegSrcA;
reg RegSrcB;
reg RegDest;

reg RegDataA;
reg RegDataB;

reg ExtendImm;

reg ALUOp;
reg ALUSrc;
reg EXResultSelect;

reg MemRead;
reg MemWrite;
reg BranchType;
reg JumpType;
reg MemReadSelect;
reg MemWriteSelect;

reg RegWrite;
reg MemToReg;

assign NPCOutput=NPC;

assign RegSrcAOutput=RegSrcA;
assign RegSrcBOutput=RegSrcB;
assign RegDestOutput=RegDest;

assign RegDataAOutput=RegDataA;
assign RegDataBOutput=RegDataB;

assign ExtendImmOutput=ExtendImm;

assign ALUOpOutput=ALUOp;
assign ALUSrcOutput=ALUSrc;
assign EXResultSelectOutput=EXResultSelect;

assign MemReadOutput=MemRead;
assign MemWriteOutput=MemWrite;
assign BranchTypeOutput=BranchType;
assign JumpTypeOutput=JumpType;
assign MemReadSelectOutput=MemReadSelect;
assign MemWriteSelectOutput=MemWriteSelect;

assign RegWriteOutput=RegWrite;
assign MemToRegOutput=MemToReg;

always@(posedge clk or posedge rst) begin
    if (rst) begin
        NPC<=0;
        
        RegSrcA<=0;
        RegSrcB<=0;
        RegDest<=0;
        
        RegDataA<=0;
        RegDataB<=0;
        
        ExtendImm<=0;
        
        ALUOp<=0;
        ALUSrc<=0;
        EXResultSelect<=0;
        
        MemRead<=0;
        MemWrite<=0;
        BranchType<=0;
        JumpType<=0;
        MemReadSelect<=0;
        MemWriteSelect<=0;
        
        RegWrite<=0;
        MemToReg<=0;
    end else begin
        if (clr) begin
            NPC<=0;
            
            RegSrcA<=0;
            RegSrcB<=0;
            RegDest<=0;
            
            RegDataA<=0;
            RegDataB<=0;
            
            ExtendImm<=0;
            
            ALUOp<=0;
            ALUSrc<=0;
            EXResultSelect<=0;
            
            MemRead<=0;
            MemWrite<=0;
            BranchType<=0;
            JumpType<=0;
            MemReadSelect<=0;
            MemWriteSelect<=0;
            
            RegWrite<=0;
            MemToReg<=0;
        end else if (writeEN) begin
            NPC<=NPCInput;
            
            RegSrcA<=RegSrcAInput;
            RegSrcB<=RegSrcBInput;
            RegDest<=RegDestInput;
            
            RegDataA<=RegDataAInput;
            RegDataB<=RegDataBInput;
            
            ExtendImm<=ExtendImmInput;
            
            ALUOp<=ALUOpInput;
            ALUSrc<=ALUSrcInput;
            EXResultSelect<=EXResultSelectInput;
            
            MemRead<=MemReadInput;
            MemWrite<=MemWriteInput;
            BranchType<=BranchTypeInput;
            JumpType<=JumpTypeInput;
            MemReadSelect<=MemReadSelectInput;
            MemWriteSelect<=MemWriteSelectInput;
            
            RegWrite<=RegWriteInput;
            MemToReg<=MemToRegInput;
        end
    end
end
    
endmodule
