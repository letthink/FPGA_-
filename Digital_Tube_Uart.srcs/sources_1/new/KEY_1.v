module filter(clk,rst_n,key_in,key_flag,key_state
	);
//�˿�����
input   clk;        //ʱ��50MHz
input   rst_n;      //��λ�ź�
input   key_in;     //��������
 
output  key_state;    //����״̬���ߵ�ƽΪδ���£��͵�ƽΪ����״̬
output  key_flag;       /*����˲��źţ�������İ������������к���Ȥ��һ���£������������з��֣���Щ�����ǰ���ʱ����Ч���ģ���Щ�ǰ����ɿ��������õģ�����δ����У���������ź�������*/
 
//����
parameter   IDLE 	= 4'b0001,
		 	FILTER0 = 4'b0010,
		 	DOWN 	= 4'b0100,
		 	FILTER1	= 4'b1000;
parameter   full_cnt = 20'd999_999; //�����Ҫ���ӳٳ���ʱ��
//�ڲ��ź�����
reg [3:0] state;
reg key_flag;
reg key_state;
reg cnt_full;
reg [19:0] cnt;
reg en_counter;
//���ؼ��ģ�飬�������źżĴ�һ�����ģ��ֱ𰴼������غ��½��صĲ���
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
assign nedge = (!key_tmp0) &  key_tmp1;        //�½���
assign pedge = key_tmp0  & (!key_tmp1);        //������
 
//״̬��ģ�� ����������
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
				if(pedge)        //��⵽�����أ�������һ��״̬ͬʱ�򿪼�����
					begin
						state <= FILTER0;
						en_counter <= 1'b1;
					end
				else 
					state <= state;    
			end
			FILTER0:
				if(cnt_full)        //��������˵���ﵽ�ȶ�״̬���رռ�����
					begin
						state <= DOWN;
						en_counter <= 1'b0;
						key_flag <= 1'b1;
						key_state <= 1'b1;
					end
				else if(nedge)        //��⵽�½��أ�ë�̣�������idle״̬ͬʱ�رռ�����
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
 
//20ms������
//������һ������ʹ���źţ�ֻ�е�����ʹ��Ϊ�ߵ�ƽ��ʱ�򣬼������Ż������������999_999������ʱ�䵽
always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		cnt <= 20'd0;
	else if(en_counter)
			cnt <= cnt + 1'b1;
		 else 
   		 	cnt <= 20'd0;
end
//�������ź� 10ms
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