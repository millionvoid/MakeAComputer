`timescale 1ns / 1ps
//
// WIDTH: bits in register hdata & vdata
// HSIZE: horizontal size of visible field 
// HFP: horizontal front of pulse
// HSP: horizontal stop of pulse
// HMAX: horizontal max size of value
// VSIZE: vertical size of visible field 
// VFP: vertical front of pulse
// VSP: vertical stop of pulse
// VMAX: vertical max size of value
// HSPP: horizontal synchro pulse polarity (0 - negative, 1 - positive)
// VSPP: vertical synchro pulse polarity (0 - negative, 1 - positive)
//
module vga
#(parameter WIDTH = 0, HSIZE = 0, HFP = 0, HSP = 0, HMAX = 0, VSIZE = 0, VFP = 0, VSP = 0, VMAX = 0, HSPP = 0, VSPP = 0)
(
    input wire clk,
    output wire hsync,
    output wire vsync,
    output wire data_enable,
    output wire [2:0]r,
    output wire [2:0]g,
    output wire [1:0]b,
    output wire[7:0] char_row,
    output wire[6:0] char_col,
    input wire[3:0] char_num
);

reg [WIDTH - 1:0] hdata;
reg [WIDTH - 1:0] vdata;

// init
initial begin
    hdata <= 0;
    vdata <= 0;
end

// hdata
always @ (posedge clk)
begin
    if (hdata == (HMAX - 1))
        hdata <= 0;
    else
        hdata <= hdata + 1;
end

// vdata
always @ (posedge clk)
begin
    if (hdata == (HMAX - 1)) 
    begin
        if (vdata == (VMAX - 1))
            vdata <= 0;
        else
            vdata <= vdata + 1;
    end
end

//reg [0:29] digitNum [0:15];
//reg showNum;
reg [WIDTH - 4:0] shrink_hdata;
reg [WIDTH - 4:0] shrink_vdata;
reg [7:0]row;
reg [2:0]digitRow;
reg [6:0]col;
reg [2:0]digitCol;
always @(*) begin
    shrink_hdata=hdata[WIDTH-1:3];
    shrink_vdata=vdata[WIDTH-1:3];
end
/*
always @(*) begin
    digitNum[0]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[1]={
        1'b0,1'b0,1'b1,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b0,1'b0,
        1'b0,1'b0,1'b1,1'b0,1'b0,
        1'b0,1'b0,1'b1,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[2]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[3]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[4]={
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[5]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[6]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[7]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[8]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[9]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[10]={
        1'b0,1'b0,1'b1,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[11]={
        1'b0,1'b1,1'b1,1'b0,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b0,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b0,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[12]={
        1'b0,1'b0,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b0,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[13]={
        1'b0,1'b1,1'b1,1'b0,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b1,1'b0,
        1'b0,1'b1,1'b1,1'b0,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[14]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
    digitNum[15]={
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b1,1'b1,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b1,1'b0,1'b0,1'b0,
        1'b0,1'b0,1'b0,1'b0,1'b0
    };
end
*/
always @(*) begin
    col = shrink_hdata/5;
    row = shrink_vdata/6;
    digitCol = shrink_hdata-5*col;
    digitRow = shrink_vdata-6*row;
end

// hsync & vsync & blank
assign hsync = ((hdata >= HFP) && (hdata < HSP)) ? HSPP : !HSPP;
assign vsync = ((vdata >= VFP) && (vdata < VSP)) ? VSPP : !VSPP;
assign data_enable = ((hdata < HSIZE) & (vdata < VSIZE));
assign char_col=col;
assign char_row=row;
//assign {r,g,b} = digitNum[char_num][digitRow*5+digitCol] ? 8'b11111111 : 0; //?????
assign {r,g,b} = (char_num != 0) ? 8'b11111111 : 0;
//assign {r,g,b} = 8'b11111111;

endmodule