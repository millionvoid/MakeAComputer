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
    
    input wire[31:0] NPCInput,
    
    input wire[5:0] RegSrcAInput,
    input wire[5:0] RegSrcBInput,
    input wire[5:0] RegDestInput,
    
    input wire[31:0] RegDataAInput,
    input wire[31:0] RegDataBInput,
    
    input wire[31:0] ExtendImmInput,
    
    input wire[3:0] ALUOpInput,
    input wire ALUSrcInput,
    input wire[1:0] EXResultSelectInput,
    
    input wire MemReadInput,
    input wire MemWriteInput,
    input wire[1:0] BranchTypeInput,
    input wire[1:0] JumpTypeInput,
    input wire[1:0] MemReadSelectInput,
    input wire MemWriteSelectInput,
    
    input wire RegWriteInput,
    input wire MemToRegInput,
    
    input wire IsMOVZInput,
    
    output wire[31:0] NPCOutput,
        
    output wire[5:0] RegSrcAOutput,
    output wire[5:0] RegSrcBOutput,
    output wire[5:0] RegDestOutput,
    
    output wire[31:0] RegDataAOutput,
    output wire[31:0] RegDataBOutput,
    
    output wire[31:0] ExtendImmOutput,
    
    output wire[3:0] ALUOpOutput,
    output wire ALUSrcOutput,
    output wire[1:0] EXResultSelectOutput,
    
    output wire MemReadOutput,
    output wire MemWriteOutput,
    output wire[1:0] BranchTypeOutput,
    output wire[1:0] JumpTypeOutput,
    output wire[1:0] MemReadSelectOutput,
    output wire MemWriteSelectOutput,
    
    output wire RegWriteOutput,
    output wire MemToRegOutput,
    
    output wire IsMOVZOutput
    );
    
reg[31:0] NPC;

reg[5:0] RegSrcA;
reg[5:0] RegSrcB;
reg[5:0] RegDest;

reg[31:0] RegDataA;
reg[31:0] RegDataB;

reg[31:0] ExtendImm;

reg[3:0] ALUOp;
reg ALUSrc;
reg[1:0] EXResultSelect;

reg MemRead;
reg MemWrite;
reg[1:0] BranchType;
reg[1:0] JumpType;
reg[1:0] MemReadSelect;
reg MemWriteSelect;

reg RegWrite;
reg MemToReg;

reg IsMOVZ;

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

assign IsMOVZOutput=IsMOVZ;

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
        
        IsMOVZ<=0;
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
            
            IsMOVZ<=0;
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
            
            IsMOVZ<=IsMOVZInput;
        end
    end
end
    
endmodule
