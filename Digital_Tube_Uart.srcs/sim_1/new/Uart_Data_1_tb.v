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
    reg              sys_clk;	//ϵͳʱ��
    reg              sys_rst_n;	//ϵͳ��λ
    reg              uart_rxd;	//���ն˿�
    wire             uart_txd;	//���Ͷ˿�
    wire    [7:0]    seven_tube_seg_n;
    wire    [7:0]    sel_out;
    wire    [1:0]    uart_data_count;
    wire             uart_en_w;

    uart_top uart_top_ints(
        .sys_clk(sys_clk),	            //ϵͳʱ��
        .sys_rst_n(sys_rst_n),	            //ϵͳ��λ
        .uart_rxd(uart_rxd),	            //���ն˿�
        .uart_txd(uart_txd),	            //���Ͷ˿�
        .seven_tube_seg_n(seven_tube_seg_n),
        .sel_out(sel_out),
        .uart_data_count(uart_data_count),
        .uart_en_w(uart_en_w)
    );

    localparam	CNT=100_000_000/115200*10;	//���������ÿ��ʱ������Ҫ��ʱ��
    initial begin	//����8λ����	8'b11010101
    //��ʼʱ�̶���  
		sys_clk	<=1'b0;	
		sys_rst_n<=1'b0;		
		uart_rxd<=1'b1;
        #20 //ϵͳ��ʼ����
            sys_rst_n<=1'b1;
        // ���͵�һ��0xFF
        #(CNT/2)	
            uart_rxd<=1'b0;//��ʼ������ʼλ
        #CNT		
            uart_rxd<=1'b1;//�������λ����1λ
        #CNT		
            uart_rxd<=1'b1;//�����2λ
        #CNT		
            uart_rxd<=1'b1;//�����3λ
        #CNT		
            uart_rxd<=1'b1;	//�����4λ
        #CNT		
            uart_rxd<=1'b1;//�����5λ
        #CNT		
            uart_rxd<=1'b1;//�����6λ
        #CNT		
            uart_rxd<=1'b1;//�����7λ
        #CNT		
            uart_rxd<=1'b1;	//�������λ����8λ
        #CNT		
            uart_rxd<=1'b1;	//������ֹλ
 // ���͵ڶ���0x01
        #(CNT)	
            uart_rxd<=1'b0;//��ʼ������ʼλ
        #CNT		
            uart_rxd<=1'b1;//�������λ����1λ
        #CNT		
            uart_rxd<=1'b0;//�����2λ
        #CNT		
            uart_rxd<=1'b0;//�����3λ
        #CNT		
            uart_rxd<=1'b0;	//�����4λ
        #CNT		
            uart_rxd<=1'b0;//�����5λ
        #CNT		
            uart_rxd<=1'b0;//�����6λ
        #CNT		
            uart_rxd<=1'b0;//�����7λ
        #CNT		
            uart_rxd<=1'b0;	//�������λ����8λ
        #CNT		
            uart_rxd<=1'b1;	//������ֹλ
 // ���͵�����0x10
        #(CNT)	
            uart_rxd<=1'b0;//��ʼ������ʼλ
        #CNT		
            uart_rxd<=1'b0;//�������λ����1λ
        #CNT		
            uart_rxd<=1'b1;//�����2λ
        #CNT		
            uart_rxd<=1'b0;//�����3λ
        #CNT		
            uart_rxd<=1'b0;	//�����4λ
        #CNT		
            uart_rxd<=1'b0;//�����5λ
        #CNT		
            uart_rxd<=1'b0;//�����6λ
        #CNT		
            uart_rxd<=1'b0;//�����7λ
        #CNT		
            uart_rxd<=1'b0;	//�������λ����8λ
        #CNT		
            uart_rxd<=1'b1;	//������ֹλ
 // ���͵��ĸ�0x11
        #(CNT)	
            uart_rxd<=1'b0;//��ʼ������ʼλ
        #CNT		
            uart_rxd<=1'b1;//�������λ����1λ
        #CNT		
            uart_rxd<=1'b1;//�����2λ
        #CNT		
            uart_rxd<=1'b0;//�����3λ
        #CNT		
            uart_rxd<=1'b0;	//�����4λ
        #CNT		
            uart_rxd<=1'b0;//�����5λ
        #CNT		
            uart_rxd<=1'b0;//�����6λ
        #CNT		
            uart_rxd<=1'b0;//�����7λ
        #CNT		
            uart_rxd<=1'b0;	//�������λ����8λ
        #CNT		
            uart_rxd<=1'b1;	//������ֹλ
        #CNT
        #2000
        $stop;
    end
 
always begin
	#5	sys_clk=~sys_clk;	//ʱ��10ns,100Mhz
end
endmodule
