`default_nettype none

module thinpad_top(
    input wire clk_50M,           //50MHz ʱ������������
    input wire clk_11M0592,       //11.0592MHz ʱ������

    input wire clock_btn,         //BTN5�ֶ�ʱ�Ӱ�ť���أ���������·������ʱΪ1
    input wire reset_btn,         //BTN6�ֶ���λ��ť���أ���������·������ʱΪ1

    input  wire[3:0]  touch_btn,  //BTN1~BTN4����ť���أ�����ʱΪ1
    input  wire[31:0] dip_sw,     //32λ���뿪�أ�������ON��ʱΪ1
    output wire[15:0] leds,       //16λLED�����ʱ1����
    output wire[7:0]  dpy0,       //����ܵ�λ�źţ�����С���㣬���1����
    output wire[7:0]  dpy1,       //����ܸ�λ�źţ�����С���㣬���1����

    //CPLD���ڿ������ź�
    output wire uart_rdn,         //�������źţ�����Ч
    output wire uart_wrn,         //д�����źţ�����Ч
    input wire uart_dataready,    //��������׼����
    input wire uart_tbre,         //�������ݱ�־
    input wire uart_tsre,         //���ݷ�����ϱ�־

    //BaseRAM�ź�
    inout wire[31:0] base_ram_data,  //BaseRAM���ݣ���8λ��CPLD���ڿ���������
    output wire[19:0] base_ram_addr, //BaseRAM��ַ
    output wire[3:0] base_ram_be_n,  //BaseRAM�ֽ�ʹ�ܣ�����Ч�������ʹ���ֽ�ʹ�ܣ��뱣��Ϊ0
    output wire base_ram_ce_n,       //BaseRAMƬѡ������Ч
    output wire base_ram_oe_n,       //BaseRAM��ʹ�ܣ�����Ч
    output wire base_ram_we_n,       //BaseRAMдʹ�ܣ�����Ч

    //ExtRAM�ź�
    inout wire[31:0] ext_ram_data,  //ExtRAM����
    output wire[19:0] ext_ram_addr, //ExtRAM��ַ
    output wire[3:0] ext_ram_be_n,  //ExtRAM�ֽ�ʹ�ܣ�����Ч�������ʹ���ֽ�ʹ�ܣ��뱣��Ϊ0
    output wire ext_ram_ce_n,       //ExtRAMƬѡ������Ч
    output wire ext_ram_oe_n,       //ExtRAM��ʹ�ܣ�����Ч
    output wire ext_ram_we_n,       //ExtRAMдʹ�ܣ�����Ч

    //ֱ�������ź�
    output wire txd,  //ֱ�����ڷ��Ͷ�
    input  wire rxd,  //ֱ�����ڽ��ն�

    //Flash�洢���źţ��ο� JS28F640 оƬ�ֲ�
    output wire [22:0]flash_a,      //Flash��ַ��a0����8bitģʽ��Ч��16bitģʽ������
    inout  wire [15:0]flash_d,      //Flash����
    output wire flash_rp_n,         //Flash��λ�źţ�����Ч
    output wire flash_vpen,         //Flashд�����źţ��͵�ƽʱ���ܲ�������д
    output wire flash_ce_n,         //FlashƬѡ�źţ�����Ч
    output wire flash_oe_n,         //Flash��ʹ���źţ�����Ч
    output wire flash_we_n,         //Flashдʹ���źţ�����Ч
    output wire flash_byte_n,       //Flash 8bitģʽѡ�񣬵���Ч����ʹ��flash��16λģʽʱ����Ϊ1

    //USB �������źţ��ο� SL811 оƬ�ֲ�
    output wire sl811_a0,
    //inout  wire[7:0] sl811_d,     //USB�������������������dm9k_sd[7:0]����
    output wire sl811_wr_n,
    output wire sl811_rd_n,
    output wire sl811_cs_n,
    output wire sl811_rst_n,
    output wire sl811_dack_n,
    input  wire sl811_intrq,
    input  wire sl811_drq_n,

    //����������źţ��ο� DM9000A оƬ�ֲ�
    output wire dm9k_cmd,
    inout  wire[15:0] dm9k_sd,
    output wire dm9k_iow_n,
    output wire dm9k_ior_n,
    output wire dm9k_cs_n,
    output wire dm9k_pwrst_n,
    input  wire dm9k_int,

    //ͼ������ź�
    output wire[2:0] video_red,    //��ɫ���أ�3λ
    output wire[2:0] video_green,  //��ɫ���أ�3λ
    output wire[1:0] video_blue,   //��ɫ���أ�2λ
    output wire video_hsync,       //��ͬ����ˮƽͬ�����ź�
    output wire video_vsync,       //��ͬ������ֱͬ�����ź�
    output wire video_clk,         //����ʱ�����
    output wire video_de           //��������Ч�źţ���������������
);

// PLL��Ƶʾ��
wire locked, clk_10M, clk_20M;
pll_example clock_gen 
 (
  // Clock out ports
  .clk_out1(clk_10M), // ʱ�����1��Ƶ����IP���ý���������
  .clk_out2(clk_20M), // ʱ�����2��Ƶ����IP���ý���������
  // Status and control signals
  .reset(reset_btn), // PLL��λ����
  .locked(locked), // ���������"1"��ʾʱ���ȶ�������Ϊ�󼶵�·��λ
 // Clock in ports
  .clk_in1(clk_50M) // �ⲿʱ������
 );

reg reset_of_clk10M;
// �첽��λ��ͬ���ͷ�
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
assign video_red = hdata < 266 ? 3'b111 : 0; //��ɫ����
assign video_green = hdata < 532 && hdata >= 266 ? 3'b111 : 0; //��ɫ����
assign video_blue = hdata >= 532 ? 2'b11 : 0; //��ɫ����
assign video_clk = clk_50M;
vga_origin #(12, 800, 856, 976, 1040, 600, 637, 643, 666, 1, 1) vga800x600at75 (
    .clk(clk_50M), 
    .hdata(hdata), //������
    .vdata(),      //������
    .hsync(video_hsync),
    .vsync(video_vsync),
    .data_enable(video_de)
);
*/

endmodule
