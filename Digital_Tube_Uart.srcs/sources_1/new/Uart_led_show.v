`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/30 13:54:06
// Design Name: 
// Module Name: Uart_led_show
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


module Uart_led_show(
    input                clk,
    input                rst,
    input        [7:0]   uart_data_get,
    input                uart_en_w,
    output  reg  [1:0]   uart_data_count,
    output  reg  [7:0]   uart_data_1,
    output  reg  [7:0]   uart_data_2,
    output  reg  [7:0]   uart_data_3,
    output  reg  [1:0]   mode_data    
    );

    wire data_flag; // 数据录入启动位
    // reg flag_1;
    // reg flag_2;
    // reg flag_3;
    wire key_state; //状态位

    // 引入上升沿检测模块
    filter filter_up_ints(
        .clk(clk),  
        .rst_n(rst), 
        .key_in(uart_en_w),
        .key_state(key_state),
        .key_flag(data_flag)
    );
    defparam filter_up_ints.full_cnt = 9'd400-1'b1;

    // 检测信号输入上升沿
    // always @(posedge clk or negedge rst) begin
    //     if(!rst) begin
    //         data_flag <= 1'b0;
    //         flag_1 <= 1'b0;
    //         flag_2 <= 1'b0;
    //         flag_3 <= 1'b0;
    //     end
    //     else begin
    //         flag_1 <= uart_en_w;
    //         flag_2 <= flag_1;
    //         flag_3 <= flag_2;
    //         data_flag <= (flag_1)&(flag_2)&(~flag_3); 
    //     end
    // end
    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            mode_data <= 1'b0;
        end
        // 35℃ 进入安全模式
        else if(uart_data_3 >= 8'h23) begin
            mode_data <= 2'd3;
        end
        else if(uart_data_2 <= 8'h30) begin
            mode_data <= 2'd2;
        end
        else begin
            mode_data <= 1'd1;
            
        end
    end

    always @(posedge clk or negedge rst) begin
        if(!rst) begin
            uart_data_count <= 1'b0;
            uart_data_1 <= 8'b0000_0000;
            uart_data_2 <= 8'b0000_0000;
            uart_data_3 <= 8'b0000_0000;
            // data_flag <= 1'b0;
        end
        else if(data_flag == 1'b1) begin
            if((uart_data_get == 8'hff) && (uart_data_count == 0)) begin
                uart_data_count <= uart_data_count + 1'b1;
            end
            else if(uart_data_count != 0) begin
                case (uart_data_count)
                    2'b01:  uart_data_1 = uart_data_get;
                    2'b10:  uart_data_2 = uart_data_get;
                    2'b11:  uart_data_3 = uart_data_get;
                    default: uart_data_count = 1'b0; 
                endcase
                // 保证最终溢出归零
                uart_data_count <= uart_data_count + 1'b1;
            end
        end
        else begin
            uart_data_count <= uart_data_count;
        end
    end

endmodule
