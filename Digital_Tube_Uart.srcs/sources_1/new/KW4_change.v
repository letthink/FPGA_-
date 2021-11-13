`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/23 17:25:02
// Design Name: 
// Module Name: KW4-281ASB
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


module KW4_change(

    input   wire            clk,
    input   wire            rst,
    input   wire    [31:0]  data,

    output  reg     [7:0]   seven_tube_seg_n,
    output  reg     [7:0]   sel_out
);

    wire  [7:0] sel_out_38;

// 38������
decoder_3_8 decoder_3_8_ints(
    .a(seven_tube_sel[2]),
    .b(seven_tube_sel[1]),
    .c(seven_tube_sel[0]),
    .out(sel_out_38)
);
  parameter  T_1ms   =      100_000 - 1;    //1ms��Ҫ�ļ���
  parameter  T_500ms =   500_00_000 - 1;    //500ms = 0.5s��Ҫ�ļ���
  parameter  T_1s    =  100_000_000 - 1;    //1000ms = 1s��Ҫ�ļ���
//   wire [31:0] data;
  wire [2:0] seven_tube_sel;

  reg             [26:0]  cnt_1s;       // 1000ms = 1s��������
  reg             [16:0]  cnt_1ms;      // 1ms������λ
  reg             [2:0]   sel;          // ѡ���־
  reg             [3:0]   show_data;    // ��ʾ����
  // reg             [2:0]   key_flag;     //������־λ
  // integer                 loop_ten;     // ʮλѭ����λ
  reg             [1:0]   Two_count;    //ʮλ��˸��������
  reg                     cnt_1s_en;    //1s��ʱ����ʼ��ʱ
  
  // ��������
  // assign  data = 32'h02468acd; 
  // 1ms������
  always @ (posedge clk, negedge rst) begin
    if (rst == 1'b0)
      cnt_1ms <= 17'd0;
    else
      if (cnt_1ms < T_1ms - 1'b1 )
        cnt_1ms <= cnt_1ms + 1'b1;
      else
        cnt_1ms <= 17'd0;
  end
  
    // 1s������
  always @ (posedge clk, negedge rst) begin
    if (!rst)
      cnt_1s <= 27'd0;
    else
      if (cnt_1s < T_1s - 1'b1 && cnt_1s_en)
        cnt_1s <= cnt_1s + 1'b1;
      else
        cnt_1s <= 26'd0;
  end

  // ����ȡ����ע������ܵĵƶ�����ѡ���ĸ������������Ҫ�͵�ѹ������0
  always @(posedge clk , negedge rst) begin
      if (!rst) begin
          sel_out <= 8'd0;
          Two_count <= 2'd0;
          // key_flag <= 3'd0;
          cnt_1s_en <= 1'b0;
      end    

      //  ������ʾ
      else begin
        sel_out <= ~sel_out_38;
      end 

  end


  // ѡ�����������ܣ����ֵ�index
  always @ (posedge clk, negedge rst) begin
    if (!rst)
      sel <= 3'd0;
    else
      if (cnt_1ms == T_1ms - 1'b1)
      //ͨ������sel�����ֵ���������������
        if (sel <= 3'd7)
          sel <= sel + 1'b1;
        else
          sel <= 3'd0;
      else
        sel <= sel;
  end
  
  assign seven_tube_sel = sel;
  
  // ��8λ���ݷָȷ����ʾ���� ��ע�⣬������32λ��ÿ������4λ����hex��պ�ÿ������4�������ƿɱ�ʾ��
  always @ * begin
    case (sel)
      3'd0    :   show_data = data[31:28];
      3'd1    :   show_data = data[27:24];
      3'd2    :   show_data = data[23:20];
      3'd3    :   show_data = data[19:16];
      3'd4    :   show_data = data[15:12];
      3'd5    :   show_data = data[11:8];
      3'd6    :   show_data = data[7:4];
      3'd7    :   show_data = data[3:0];
      default :   show_data = 2;
    endcase
  end

    // ����ܵ���Ч��չʾ
  always @ (posedge clk, negedge rst) begin
    if (rst == 1'b0) begin
        seven_tube_seg_n <= 8'hff;

    end

    else
    //������Ҫ�����ֽ���ѡ��������������
      case (show_data)
        4'd0     :  seven_tube_seg_n <= 8'b1100_0000; //c0
        4'd1     :  seven_tube_seg_n <= 8'b1111_1001; //f9
        4'd2     :  seven_tube_seg_n <= 8'ha4;
        4'd3     :  seven_tube_seg_n <= 8'hb0;
        4'd4     :  seven_tube_seg_n <= 8'h99;
        4'd5     :  seven_tube_seg_n <= 8'h92;
        4'd6     :  seven_tube_seg_n <= 8'h82;
        4'd7     :  seven_tube_seg_n <= 8'hf8;
        4'd8     :  seven_tube_seg_n <= 8'h80;
        4'd9     :  seven_tube_seg_n <= 8'h90;
        4'd10    :  seven_tube_seg_n <= 8'h88;
        4'd11    :  seven_tube_seg_n <= 8'h83;
        4'd12    :  seven_tube_seg_n <= 8'hc6;
        4'd13    :  seven_tube_seg_n <= 8'ha1;
        4'd14    :  seven_tube_seg_n <= 8'h86;
        // �˴��������ģ���F��Ϊ ��-��
        // 4'd15    :  seven_tube_seg_n <= 8'h8e;
        4'd15    :  seven_tube_seg_n <= 8'hbf;
        default        :  seven_tube_seg_n <= 8'hff;
      endcase
  end


endmodule
