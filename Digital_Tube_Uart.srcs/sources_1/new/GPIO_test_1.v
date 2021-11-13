`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/02 15:49:06
// Design Name: 
// Module Name: GPIO_test_1
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


module GPIO_test_1(
    sys_clk,
    sys_rst_n,
    Led
    );

    input sys_clk;
    input sys_rst_n;
    output reg [1:0] Led;

    parameter sys_clk_num = 100_000_000;
    reg [32:0] clk_cnt;

    // 定时器
    always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n)
            clk_cnt <= 0;
        // 注意减一
        else if(clk_cnt == sys_clk_num - 1)
            clk_cnt <= 0;
        else
            clk_cnt <= clk_cnt + 1;
    end
    // Led 闪烁      
        always @(posedge sys_clk or negedge sys_rst_n) begin
        if(!sys_rst_n)
            Led <= 0;
        else if(clk_cnt == sys_clk_num - 1)
            Led <= ~Led;
        else
            Led <= Led;
        end

endmodule
