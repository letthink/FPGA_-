`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/03 23:12:01
// Design Name: 
// Module Name: uart_top
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


module uart_top(
	// 串口
	input 			     sys_clk,	//系统时钟
	input 			     sys_rst_n,	//系统复位
 
	input 			     uart_rxd,	//接收端口
	output			     uart_txd,	//发送端口

	// 数码管
	output       [7:0]   seven_tube_seg_n,
    output       [7:0]   sel_out,

	output 	 	 [2:0]    r, 
	output 	 	 [2:0]    g, 
	output 	 	 [1:0]    b, 
	output             	  hs,
	output             	  vs 
	// 启动按键
	// input 				 star
	// 数据测试
	//output 		 [1:0]	 uart_data_count,
	//output 				 uart_en_w
 
);
parameter	UART_BPS=115200;			//波特率
parameter	CLK_FREQ=100_000_000;		//系统频率100MHZ	
 
// wire uart_en_w;
wire 	[7:0] 		uart_data_get; 
wire 	[31:0] 		Tube_Data;
wire 	[7:0]		uart_data_1;
wire 	[7:0]		uart_data_2;
wire 	[7:0]		uart_data_3;
wire	[1:0]		mode_data;			//判定得到的模式

assign Tube_Data = {uart_data_1,4'hf,uart_data_2,4'hf,uart_data_3};
 
//例化发送模块
uart_tx#(
	.BPS		    (UART_BPS),
	.SYS_CLK_FRE	(CLK_FREQ))
u_uart_tx_change(
	.sys_clk		(sys_clk),
	.sys_rst_n	    (sys_rst_n),
	.mode_data	    (mode_data),	
	.uart_tx_en		(uart_en_w),
	.uart_txd	    (uart_txd)
);
//例化接收模块
uart_rx #(
	.BPS				(UART_BPS),
	.SYS_CLK_FRE		(CLK_FREQ))
u_uart_rx(
	.sys_clk			(sys_clk),
	.sys_rst_n		    (sys_rst_n),
	.uart_rxd		    (uart_rxd),	
	.uart_rx_done	    (uart_en_w),
	.uart_rx_data	    (uart_data_get)
);
 
//  数码管效果显示
KW4_change KW4_change_ints(
	.clk(sys_clk),
	.rst(sys_rst_n),
	.data(Tube_Data),
	.seven_tube_seg_n(seven_tube_seg_n),
	.sel_out(sel_out)
);

// 串口收发测试
Uart_led_show Uart_led_show_ints(
	.clk(sys_clk),
	.rst(sys_rst_n),
	.uart_data_get(uart_data_get),
	.uart_en_w(uart_en_w),
	.uart_data_count(uart_data_count),
	.uart_data_1(uart_data_1),
	.uart_data_2(uart_data_2),
	.uart_data_3(uart_data_3),
	.mode_data(mode_data)
);

// VGA 屏幕显示
vga_char_display vga_char_display_ints(
	.clk(sys_clk),
	.rst(sys_rst_n),
	.data(uart_data_1),
	.r(r),  
	.g(g),  
	.b(b),  
	.hs(hs), 
	.vs(vs)  
);
// KNN算法实现
knntest knntest_ints(
	.pre(uart_data_1),
	.ph(uart_data_2),
	.tem(uart_data_3),
	.clk(sys_rst_n),
	.rst_n(sys_rst_n),
	.last_state(mode_data)
);
endmodule