`default_nettype none

module thinpad_top(
    input wire clk_50M,           //50MHz 时钟输入钟输入
    input wire clk_11M0592,       //11.0592MHz 时钟输入

    input wire clock_btn,         //BTN5手动时钟按钮开关，带消抖电路，按下时为1
    input wire reset_btn,         //BTN6手动复位按钮开关，带消抖电路，按下时为1

    input  wire[3:0]  touch_btn,  //BTN1~BTN4，按钮开关，按下时为1
    input  wire[31:0] dip_sw,     //32位拨码开关，拨到“ON”时为1
    output wire[15:0] leds,       //16位LED，输出时1点亮
    output wire[7:0]  dpy0,       //数码管低位信号，包括小数点，输出1点亮
    output wire[7:0]  dpy1,       //数码管高位信号，包括小数点，输出1点亮

    //CPLD串口控制器信号
    output wire uart_rdn,         //读串口信号，低有效
    output wire uart_wrn,         //写串口信号，低有效
    input wire uart_dataready,    //串口数据准备好
    input wire uart_tbre,         //发送数据标志
    input wire uart_tsre,         //数据发送完毕标志

    //BaseRAM信号
    inout wire[31:0] base_ram_data,  //BaseRAM数据，低8位与CPLD串口控制器共享
    output wire[19:0] base_ram_addr, //BaseRAM地址
    output wire[3:0] base_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output wire base_ram_ce_n,       //BaseRAM片选，低有效
    output wire base_ram_oe_n,       //BaseRAM读使能，低有效
    output wire base_ram_we_n,       //BaseRAM写使能，低有效

    //ExtRAM信号
    inout wire[31:0] ext_ram_data,  //ExtRAM数据
    output wire[19:0] ext_ram_addr, //ExtRAM地址
    output wire[3:0] ext_ram_be_n,  //ExtRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output wire ext_ram_ce_n,       //ExtRAM片选，低有效
    output wire ext_ram_oe_n,       //ExtRAM读使能，低有效
    output wire ext_ram_we_n,       //ExtRAM写使能，低有效

    //直连串口信号
    output wire txd,  //直连串口发送端
    input  wire rxd,  //直连串口接收端

    //Flash存储器信号，参考 JS28F640 芯片手册
    output wire [22:0]flash_a,      //Flash地址，a0仅在8bit模式有效，16bit模式无意义
    inout  wire [15:0]flash_d,      //Flash数据
    output wire flash_rp_n,         //Flash复位信号，低有效
    output wire flash_vpen,         //Flash写保护信号，低电平时不能擦除、烧写
    output wire flash_ce_n,         //Flash片选信号，低有效
    output wire flash_oe_n,         //Flash读使能信号，低有效
    output wire flash_we_n,         //Flash写使能信号，低有效
    output wire flash_byte_n,       //Flash 8bit模式选择，低有效。在使用flash的16位模式时请设为1

    //USB 控制器信号，参考 SL811 芯片手册
    output wire sl811_a0,
    //inout  wire[7:0] sl811_d,     //USB数据线与网络控制器的dm9k_sd[7:0]共享
    output wire sl811_wr_n,
    output wire sl811_rd_n,
    output wire sl811_cs_n,
    output wire sl811_rst_n,
    output wire sl811_dack_n,
    input  wire sl811_intrq,
    input  wire sl811_drq_n,

    //网络控制器信号，参考 DM9000A 芯片手册
    output wire dm9k_cmd,
    inout  wire[15:0] dm9k_sd,
    output wire dm9k_iow_n,
    output wire dm9k_ior_n,
    output wire dm9k_cs_n,
    output wire dm9k_pwrst_n,
    input  wire dm9k_int,

    //图像输出信号
    output wire[2:0] video_red,    //红色像素，3位
    output wire[2:0] video_green,  //绿色像素，3位
    output wire[1:0] video_blue,   //蓝色像素，2位
    output wire video_hsync,       //行同步（水平同步）信号
    output wire video_vsync,       //场同步（垂直同步）信号
    output wire video_clk,         //像素时钟输出
    output wire video_de           //行数据有效信号，用于区分消隐区
);

// PLL分频示例
wire locked, clk_10M, clk_20M;
pll_example clock_gen 
 (
  // Clock out ports
  .clk_out1(clk_10M), // 时钟输出1，频率在IP配置界面中设置
  .clk_out2(clk_20M), // 时钟输出2，频率在IP配置界面中设置
  // Status and control signals
  .reset(reset_btn), // PLL复位输入
  .locked(locked), // 锁定输出，"1"表示时钟稳定，可作为后级电路复位
 // Clock in ports
  .clk_in1(clk_50M) // 外部时钟输入
 );

reg reset_of_clk10M;
// 异步复位，同步释放
always@(posedge clk_10M or negedge locked) begin
    if(~locked) reset_of_clk10M <= 1'b1;
    else        reset_of_clk10M <= 1'b0;
end

wire clock;
wire reset;
assign clock=clk_50M;
assign reset=reset_btn;
//assign clock=clk_10M;
//assign reset=reset_of_clk10M;

wire CPUclk;
wire[31:0] InstAddress;
wire[31:0] InstInput;
wire[31:0] MemAddress;
wire[31:0] MemReadData;
wire[31:0] MemWriteData;
wire MemReadEN;
wire MemWriteEN;
wire [1:0]MemReadSelect;
wire MemWriteSelect;

wire[15:0] LED_CPU;
wire[15:0] LED_MEM;

assign leds = dip_sw[29] ? LED_MEM : LED_CPU;

CPU CPU_c(
    .clk(CPUclk),
    .rst(reset),
    .InstAddress(InstAddress),
    .InstInput(InstInput),
    .MemAddress(MemAddress),
    .MemReadData(MemReadData),
    .MemWriteData(MemWriteData),
    .MemReadEN(MemReadEN),
    .MemWriteEN(MemWriteEN),
    .MemReadSelect(MemReadSelect),
    .MemWriteSelect(MemWriteSelect),
    
    .SW(dip_sw[7:0]),
    .LED(LED_CPU)
);

SEG7_LUT debug_dpy0(.iDIG(InstAddress[3:0]), .oSEG1(dpy0));
SEG7_LUT debug_dpy1(.iDIG(InstAddress[7:4]), .oSEG1(dpy1));

reg debug;
assign txd=debug;

always@(posedge clock or posedge reset) begin
    if (reset) begin
        if ((dip_sw[31:30] == 1) | (dip_sw[31:30] == 2)) begin 
            debug <= 0;
        end else begin
            debug <= 1;
        end
    end else if (!debug) begin
        if (dip_sw[31:30] == 1) begin
            if (InstAddress[15:0] == dip_sw[23:8]) begin
                debug <= 1;
            end
        end else if (dip_sw[31:30] == 2) begin
        end else begin
            debug <= 1;
        end
    end
end

wire[15:0] vga_addr;
wire[7:0] vga_data;

MemoryNew memory_c(
    .LEDOut(LED_MEM),
    .SW(dip_sw[27:24]),

    .uart_rdn(uart_rdn),
    .uart_wrn(uart_wrn),
    .uart_dataready(uart_dataready),
    .uart_tbre(uart_tbre),
    .uart_tsre(uart_tsre),

    .ram_data(base_ram_data),
    .ram_addr(base_ram_addr),
    .ram_CE(base_ram_ce_n),
    .ram_OE(base_ram_oe_n),
    .ram_WE(base_ram_we_n),
    .ram_BE(base_ram_be_n),
    
    .ext_ram_data(ext_ram_data),
    .ext_ram_addr(ext_ram_addr),
    .ext_ram_CE(ext_ram_ce_n),
    .ext_ram_OE(ext_ram_oe_n),
    .ext_ram_WE(ext_ram_we_n),
    .ext_ram_BE(ext_ram_be_n),
    
    .clk(clock),
    .rst(reset),
    .run_ctrl(clock_btn),
    .debug(debug),
    .CPUclk(CPUclk),
    
    .InstAddress(InstAddress),
    .InstInput(InstInput),
    
    .MemReadEN(MemReadEN),
    .MemWriteEN(MemWriteEN),
    .MemReadSelect(MemReadSelect),
    .MemWriteSelect(MemWriteSelect),
    .MemAddress(MemAddress),
    .MemWriteData(MemWriteData),
    .MemReadData(MemReadData),
    
    .vga_addr(vga_addr),
    .vga_data(vga_data)
);

wire[7:0] view_row;
wire[6:0] view_col;
wire[3:0] view_char;

VGAAdapter VGAAdapter_c(
    .clk(clock),
    .rst(reset),
    .addr(vga_addr),
    .in_char(vga_data),
    
    .row(view_row),
    .col(view_col),
    .out_char(view_char)
);

assign video_clk=clk_50M;
vga #(12, 800, 856, 976, 1040, 600, 637, 643, 666, 1, 1) vga800x600at75 (
    .clk(clk_50M),
    
    .hsync(video_hsync),
    .vsync(video_vsync),
    .data_enable(video_de),
    .r(video_red),
    .g(video_green),
    .b(video_blue),
    
    .char_row(view_row),
    .char_col(view_col),
    .char_num(view_char)
);

/*
wire [11:0] hdata;
assign video_red = hdata < 266 ? 3'b111 : 0; //红色竖条
assign video_green = hdata < 532 && hdata >= 266 ? 3'b111 : 0; //绿色竖条
assign video_blue = hdata >= 532 ? 2'b11 : 0; //蓝色竖条
assign video_clk = clk_50M;
vga_origin #(12, 800, 856, 976, 1040, 600, 637, 643, 666, 1, 1) vga800x600at75 (
    .clk(clk_50M), 
    .hdata(hdata), //横坐标
    .vdata(),      //纵坐标
    .hsync(video_hsync),
    .vsync(video_vsync),
    .data_enable(video_de)
);
*/

endmodule
