`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 06:29:29
// Design Name: 
// Module Name: RegEXMEM
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


module RegEXMEM(
    input wire clk,
    input wire rst,
    input wire clr,
    input wire writeEN,
    
    input wire EXResultInput,
    input wire RegDestInput,
    input wire RegDataBInput,
    
    input wire MemReadInput,
    input wire MemWriteInput,
    input wire BranchTypeInput,
    input wire JumpTypeInput,
    input wire MemReadSelectInput,
    input wire MemWriteSelectInput,
    
    input wire RegWriteInput,
    input wire MemToRegInput,
    
    output wire EXResultOutput,
    output wire RegDestOutput,
    output wire RegDataBOutput,
    
    output wire MemReadOutput,
    output wire MemWriteOutput,
    output wire BranchTypeOutput,
    output wire JumpTypeOutput,
    output wire MemReadSelectOutput,
    output wire MemWriteSelectOutput,
    
    output wire RegWriteOutput,
    output wire MemToRegOutput
    );

reg EXResult;
reg RegDest;
reg RegDataB;

reg MemRead;
reg MemWrite;
reg BranchType;
reg JumpType;
reg MemReadSelect;
reg MemWriteSelect;

reg RegWrite;
reg MemToReg;

assign EXResultOutput=EXResult;
assign RegDestOutput=RegDest;
assign RegDataBOutput=RegDataB;

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

        EXResult<=0;
        RegDest<=0;
        RegDataB<=0;
        
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

            EXResult<=0;
            RegDest<=0;
            RegDataB<=0;
            
            MemRead<=0;
            MemWrite<=0;
            BranchType<=0;
            JumpType<=0;
            MemReadSelect<=0;
            MemWriteSelect<=0;
            
            RegWrite<=0;
            MemToReg<=0;
        end else if (writeEN) begin

            EXResult<=EXResultInput;
            RegDest<=RegDestInput;
            RegDataB<=RegDataBInput;
            
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
