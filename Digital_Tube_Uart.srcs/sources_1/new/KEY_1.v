module filter(clk,rst_n,key_in,key_flag,key_state
	);
//端口声明
input   clk;        //时钟50MHz
input   rst_n;      //复位信号
input   key_in;     //按键输入
 
output  key_state;    //按键状态，高电平为未按下，低电平为按下状态
output  key_flag;       /*完成滤波信号（消抖后的按键），这里有很有趣的一件事，我们在生活中发现，有些按键是按下时产生效果的，有些是按下松开后起作用的，在这段代码中，依据这个信号来产生*/
 
//定义
parameter   IDLE 	= 4'b0001,
		 	FILTER0 = 4'b0010,
		 	DOWN 	= 4'b0100,
		 	FILTER1	= 4'b1000;
parameter   full_cnt = 20'd999_999; //检测需要的延迟持续时间
//内部信号声明
reg [3:0] state;
reg key_flag;
reg key_state;
reg cnt_full;
reg [19:0] cnt;
reg en_counter;
//边沿检测模块，将输入信号寄存一个节拍，分别按键上升沿和下降沿的产生
reg key_tmp0,key_tmp1;
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
	begin
		key_tmp0 <= 1'b1;
		key_tmp1 <= 1'b1;
	end
	else 
	begin
		key_tmp0 <= key_in;
		key_tmp1 <= key_tmp0;
	end
end
wire pedge,nedge;
assign nedge = (!key_tmp0) &  key_tmp1;        //下降沿
assign pedge = key_tmp0  & (!key_tmp1);        //上升沿
 
//状态机模块 捕获上升沿
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		begin
			state <= IDLE;
			en_counter <= 1'b0;
			key_state <= 1'b0;
			key_flag <= 1'b0;
		end
	else 
	begin
		case(state)
			IDLE:
			begin
				key_flag <= 1'b0;
				key_state <= 1'b0;
				en_counter <= 1'b0;
				if(pedge)        //检测到上升沿，进入下一个状态同时打开计数器
					begin
						state <= FILTER0;
						en_counter <= 1'b1;
					end
				else 
					state <= state;    
			end
			FILTER0:
				if(cnt_full)        //计数满，说明达到稳定状态，关闭计数器
					begin
						state <= DOWN;
						en_counter <= 1'b0;
						key_flag <= 1'b1;
						key_state <= 1'b1;
					end
				else if(nedge)        //检测到下降沿（毛刺），跳回idle状态同时关闭计数器
						begin
							en_counter <= 1'b0;
							state <= IDLE;
						end
					 else 
					 	state <= state;
			DOWN:
				begin
					key_flag <= 1'b0;
					if(nedge)
						begin
							state <= FILTER1;
							en_counter <= 1'b1;
						end
					else 
						state <= DOWN;
				end
			FILTER1:
				if(cnt_full)
					begin
						state <= IDLE;
						//key_flag <= 1'b1;
						key_state <= 1'b0;
					end
				else 
					if(pedge)
						begin
					 		en_counter <= 1'b0;
					 		state <= DOWN;					 		
					 	end 
					else 
						state <= state;
			default:
				state <= IDLE;
			endcase
	end
end
 
//20ms计数器
//这里有一个计数使能信号，只有当计数使能为高电平的时候，计数器才会计数，数数到999_999计数满时间到
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt <= 20'd0;
	else if(en_counter)
			cnt <= cnt + 1'b1;
		 else 
   		 	cnt <= 20'd0;
end
//计数满信号 10ms
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt_full <= 1'b0;
	else if(cnt == full_cnt)
			cnt_full <= 1'b1;
		 else 
		 	cnt_full <= 1'b0;
end
 
endmodule 