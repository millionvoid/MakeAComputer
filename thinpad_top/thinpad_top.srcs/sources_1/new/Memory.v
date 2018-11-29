`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/30 02:11:33
// Design Name: 
// Module Name: Memory
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


module Memory(
    input wire clk,
    input wire rst,
    output wire CPUclk,
    input wire[31:0] SW,
    output wire[31:0] LEDOut,
    
    input wire InstAddress,
    output wire InstInput,
    
    input wire MemReadEN,
    input wire MemWriteEN,
    input wire[1:0] MemReadSelect,
    input wire MemWriteSelect,
    input wire[31:0] MemAddress,
    input wire[31:0] MemWriteData,
    output wire[31:0] MemReadData,
    
    output wire uart_rdn,
    output wire uart_wrn,
    input wire uart_dataready,
    input wire uart_tbre,
    input wire uart_tsre,
    
    inout wire[31:0] ram_data,
    output wire[19:0] ram_addr,
    output wire ram_CE,
    output wire ram_OE,
    output wire ram_WE
    );

reg ctrl;
wire succ;
reg[1:0] mode;

reg[31:0] in_data;
wire[31:0] out_data;
reg[19:0] in_addr;

wire uart_r_ok,uart_w_ok;

reg[2:0] state;

reg[31:0] BufferData1, BufferData2;

always@(posedge clk or posedge rst) begin
    if (rst == 1) begin
        state <= 0;
    end else begin
        case (state)
            0:begin //pre
                if (MemReadEN | MemWriteEN) begin
                    state <= 1;
                end else begin
                    state <= 3;
                end
            end
            1:begin //rw_start
                case (MemAddress)
                    32'hBFD003F8:begin
                        mode <= {1'b0,MemReadEN};
                        ctrl <= succ;
                        state <= 2;
                    end
                    32'hBFD003FC:begin
                        BufferData2 <= {30'b0,uart_r_ok,uart_w_ok};
                        state <= 3;
                    end
                    default:begin
                        mode <= {1'b1,MemReadEN};
                        ctrl <= succ;
                        state <= 2;
                    end
                endcase
            end
            2:begin //rw_wait
                if (succ) begin
                    BufferData2 <= out_data;
                end
            end
            3:begin //ins_start
            end
            4:begin //ins_wait
            end
            default:begin
            end
        endcase
    end
end

Ctrl_SRAM_UART controller(
    .uart_rdn(uart_rdn),
    .uart_wrn(uart_wrn),
    .uart_dataready(uart_dataready),
    .uart_tbre(uart_tbre),
    .uart_tsre(uart_tsre),

    .ram_data(ram_data),
    .ram_addr(ram_addr),
    .ram_CE(ram_CE),
    .ram_OE(ram_OE),
    .ram_WE(ram_WE),
    
    .clk(clk),
    .rst(rst),
    .ctrl(ctrl),
    .mode(mode),
    .in(in_data),
    .in_addr(in_addr),
    .out(out_data),
    .succ(succ),
    .uart_r_ok(uart_r_ok),
    .uart_w_ok(uart_w_ok)
);


endmodule
