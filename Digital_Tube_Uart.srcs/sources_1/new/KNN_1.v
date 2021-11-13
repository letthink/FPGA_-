`timescale 1ns / 1ns


module knntest(
    input   wire [7:0] ph,
    input   wire [7:0] tem,
    input   wire [7:0] pre,
	input   wire clk,
	input   wire rst_n,
	
	output reg [1:0] last_state
	);
reg [7:0] state_data;//状态暂存
reg [7:0] data_sin[399:0];  //存储文件中的数据
reg [15:0] all_dis_list[99:0]; //存储欧式距离的数组
reg [7:0] all_state[99:0];  //存储状态的数组
reg [15:0] all_dis;  //暂存与每个数据的欧式距离
reg [7:0] all_state_temp; //暂存循环排序时的状态值
reg [15:0] dis_temp; //暂存循环排序时的欧式距离值
reg [8:0] ph_address;//ph值的地址
reg [8:0] tem_address;//温度的地址
reg [8:0] pre_address;//气压的地址
reg [8:0] state_address;//状态的地址
reg [8:0] count,i,j,num,state_num;  //前三个变量用作计数，最后一个用作状态计数
initial  
begin  
$readmemb("E:/pythonProject2/bayes/verilog2_test.txt",data_sin); 
state_num <= 10'd0;
i <= 10'd0;
j <= 10'd0;
state_address <= 10'd0;
dis_temp <= 16'd60000;
end 

always @(posedge clk or negedge rst_n)
begin
if(state_address <= 400)
begin
    if(!rst_n)
        begin
            ph_address <= 10'd0;
            tem_address <= 10'd1;
            pre_address <= 10'd2;
            state_address <= 10'd3;
            count <= 10'd0;
        end
    else
        begin
            ph_address <= ph_address+10'd4;
            tem_address <= tem_address+10'd4;
            pre_address <= pre_address+10'd4;
            state_address <= state_address+10'd4;
            count <= count+10'd1;
        end
    begin
        state_data <= data_sin[state_address];
        all_dis <= (data_sin[ph_address]-ph)*(data_sin[ph_address]-ph)+(data_sin[tem_address]-tem)*(data_sin[tem_address]-tem)+(data_sin[pre_address]-pre)*(data_sin[pre_address]-pre);
        all_dis_list[count] <= all_dis;
        all_state[count] <= state_data;        
    end
end
else
begin
    if(i<3 && j<100)
    begin
        if(dis_temp > all_dis_list[j])
        begin
            dis_temp <= all_dis_list[j];
            num <= j;
            all_state_temp <= all_state[j];
            j <= j+10'd1;
        end
        else
        begin
            j <= j+10'd1;
        end
    end
    if(i<3 && j>99)
    begin
        if(all_state_temp == 10'd1)
            begin
                state_num <= state_num +10'd1;
            end
        all_dis_list[num] = 16'd60000;
        dis_temp <= 16'd60000;
        i <= i+10'd1;
        j <= 0;
    end
    if(i==3 && j==0)
    begin
        if(state_num>1)
            last_state <= 10'd1;
        else
            last_state <= 10'd2;
    state_num <= 10'd0;
    i <= 10'd0;
    j <= 10'd0;
    state_address <= 10'd0;
    dis_temp <= 16'd60000;
    ph_address <= 10'd0;
    tem_address <= 10'd1;
    pre_address <= 10'd2;
    state_address <= 10'd3;
    count <= 10'd0;
    end
end
end

endmodule
