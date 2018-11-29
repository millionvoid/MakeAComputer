`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 06:29:29
// Design Name: 
// Module Name: RegMEMWB
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


module RegMEMWB(
    input wire clk,
    input wire rst,
    input wire clr,
    input wire writeEN,
    
    input wire MemReadDataInput,
    input wire EXResultInput,
    input wire RegDestInput,
    
    input wire RegWriteInput,
    input wire MemToRegInput,
    
    output wire MemReadDataOutput,    
    output wire EXResultOutput,
    output wire RegDestOutput,
    
    output wire RegWriteOutput,
    output wire MemToRegOutput
    );

reg MemReadData;
reg EXResult;
reg RegDest;

reg RegWrite;
reg MemToReg;

assign MemReadDataOutput=MemReadData;
assign EXResultOutput=EXResult;
assign RegDestOutput=RegDest;

assign RegWriteOutput=RegWrite;
assign MemToRegOutput=MemToReg;

always@(posedge clk or posedge rst) begin
    if (rst) begin

        MemReadData<=0;
        EXResult<=0;
        RegDest<=0;
        
        RegWrite<=0;
        MemToReg<=0;
    end else begin
        if (clr) begin

            MemReadData<=0;
            EXResult<=0;
            RegDest<=0;
            
            RegWrite<=0;
            MemToReg<=0;
        end else if (writeEN) begin

            MemReadData<=MemReadDataInput;
            EXResult<=EXResultInput;
            RegDest<=RegDestInput;
            
            RegWrite<=RegWriteInput;
            MemToReg<=MemToRegInput;
        end
    end
end

endmodule
