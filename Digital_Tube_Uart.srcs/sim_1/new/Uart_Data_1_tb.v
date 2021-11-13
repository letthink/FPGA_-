`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/30 17:18:40
// Design Name: 
// Module Name: Uart_Data_1_tb
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


module Uart_Data_1_tb(


    );
    reg              sys_clk;	//系统时钟
    reg              sys_rst_n;	//系统复位
    reg              uart_rxd;	//接收端口
    wire             uart_txd;	//发送端口
    wire    [7:0]    seven_tube_seg_n;
    wire    [7:0]    sel_out;
    wire    [1:0]    uart_data_count;
    wire             uart_en_w;

    uart_top uart_top_ints(
        .sys_clk(sys_clk),	            //系统时钟
        .sys_rst_n(sys_rst_n),	            //系统复位
        .uart_rxd(uart_rxd),	            //接收端口
        .uart_txd(uart_txd),	            //发送端口
        .seven_tube_seg_n(seven_tube_seg_n),
        .sel_out(sel_out),
        .uart_data_count(uart_data_count),
        .uart_en_w(uart_en_w)
    );

    localparam	CNT=100_000_000/115200*10;	//计算出传输每个时钟所需要的时间
    initial begin	//传输8位数据	8'b11010101
    //初始时刻定义  
		sys_clk	<=1'b0;	
		sys_rst_n<=1'b0;		
		uart_rxd<=1'b1;
        #20 //系统开始工作
            sys_rst_n<=1'b1;
        // 发送第一个0xFF
        #(CNT/2)	
            uart_rxd<=1'b0;//开始传输起始位
        #CNT		
            uart_rxd<=1'b1;//传输最低位，第1位
        #CNT		
            uart_rxd<=1'b1;//传输第2位
        #CNT		
            uart_rxd<=1'b1;//传输第3位
        #CNT		
            uart_rxd<=1'b1;	//传输第4位
        #CNT		
            uart_rxd<=1'b1;//传输第5位
        #CNT		
            uart_rxd<=1'b1;//传输第6位
        #CNT		
            uart_rxd<=1'b1;//传输第7位
        #CNT		
            uart_rxd<=1'b1;	//传输最高位，第8位
        #CNT		
            uart_rxd<=1'b1;	//传输终止位
 // 发送第二个0x01
        #(CNT)	
            uart_rxd<=1'b0;//开始传输起始位
        #CNT		
            uart_rxd<=1'b1;//传输最低位，第1位
        #CNT		
            uart_rxd<=1'b0;//传输第2位
        #CNT		
            uart_rxd<=1'b0;//传输第3位
        #CNT		
            uart_rxd<=1'b0;	//传输第4位
        #CNT		
            uart_rxd<=1'b0;//传输第5位
        #CNT		
            uart_rxd<=1'b0;//传输第6位
        #CNT		
            uart_rxd<=1'b0;//传输第7位
        #CNT		
            uart_rxd<=1'b0;	//传输最高位，第8位
        #CNT		
            uart_rxd<=1'b1;	//传输终止位
 // 发送第三个0x10
        #(CNT)	
            uart_rxd<=1'b0;//开始传输起始位
        #CNT		
            uart_rxd<=1'b0;//传输最低位，第1位
        #CNT		
            uart_rxd<=1'b1;//传输第2位
        #CNT		
            uart_rxd<=1'b0;//传输第3位
        #CNT		
            uart_rxd<=1'b0;	//传输第4位
        #CNT		
            uart_rxd<=1'b0;//传输第5位
        #CNT		
            uart_rxd<=1'b0;//传输第6位
        #CNT		
            uart_rxd<=1'b0;//传输第7位
        #CNT		
            uart_rxd<=1'b0;	//传输最高位，第8位
        #CNT		
            uart_rxd<=1'b1;	//传输终止位
 // 发送第四个0x11
        #(CNT)	
            uart_rxd<=1'b0;//开始传输起始位
        #CNT		
            uart_rxd<=1'b1;//传输最低位，第1位
        #CNT		
            uart_rxd<=1'b1;//传输第2位
        #CNT		
            uart_rxd<=1'b0;//传输第3位
        #CNT		
            uart_rxd<=1'b0;	//传输第4位
        #CNT		
            uart_rxd<=1'b0;//传输第5位
        #CNT		
            uart_rxd<=1'b0;//传输第6位
        #CNT		
            uart_rxd<=1'b0;//传输第7位
        #CNT		
            uart_rxd<=1'b0;	//传输最高位，第8位
        #CNT		
            uart_rxd<=1'b1;	//传输终止位
        #CNT
        #2000
        $stop;
    end
 
always begin
	#5	sys_clk=~sys_clk;	//时钟10ns,100Mhz
end
endmodule
