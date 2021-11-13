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

// 38译码器
decoder_3_8 decoder_3_8_ints(
    .a(seven_tube_sel[2]),
    .b(seven_tube_sel[1]),
    .c(seven_tube_sel[0]),
    .out(sel_out_38)
);
  parameter  T_1ms   =      100_000 - 1;    //1ms需要的计数
  parameter  T_500ms =   500_00_000 - 1;    //500ms = 0.5s需要的计数
  parameter  T_1s    =  100_000_000 - 1;    //1000ms = 1s需要的计数
//   wire [31:0] data;
  wire [2:0] seven_tube_sel;

  reg             [26:0]  cnt_1s;       // 1000ms = 1s计数变量
  reg             [16:0]  cnt_1ms;      // 1ms计数单位
  reg             [2:0]   sel;          // 选择标志
  reg             [3:0]   show_data;    // 显示数据
  // reg             [2:0]   key_flag;     //按键标志位
  // integer                 loop_ten;     // 十位循环单位
  reg             [1:0]   Two_count;    //十位闪烁字数计数
  reg                     cnt_1s_en;    //1s计时器开始计时
  
  // 测试数据
  // assign  data = 32'h02468acd; 
  // 1ms计数器
  always @ (posedge clk, negedge rst) begin
    if (rst == 1'b0)
      cnt_1ms <= 17'd0;
    else
      if (cnt_1ms < T_1ms - 1'b1 )
        cnt_1ms <= cnt_1ms + 1'b1;
      else
        cnt_1ms <= 17'd0;
  end
  
    // 1s计数器
  always @ (posedge clk, negedge rst) begin
    if (!rst)
      cnt_1s <= 27'd0;
    else
      if (cnt_1s < T_1s - 1'b1 && cnt_1s_en)
        cnt_1s <= cnt_1s + 1'b1;
      else
        cnt_1s <= 26'd0;
  end

  // 数据取反，注意数码管的灯段亮和选择哪个数码管亮都需要低电压，即置0
  always @(posedge clk , negedge rst) begin
      if (!rst) begin
          sel_out <= 8'd0;
          Two_count <= 2'd0;
          // key_flag <= 3'd0;
          cnt_1s_en <= 1'b0;
      end    

      //  正常显示
      else begin
        sel_out <= ~sel_out_38;
      end 

  end


  // 选择点亮的数码管，数字的index
  always @ (posedge clk, negedge rst) begin
    if (!rst)
      sel <= 3'd0;
    else
      if (cnt_1ms == T_1ms - 1'b1)
      //通过调整sel的最大值，调整数码管数量
        if (sel <= 3'd7)
          sel <= sel + 1'b1;
        else
          sel <= 3'd0;
      else
        sel <= sel;
  end
  
  assign seven_tube_sel = sel;
  
  // 将8位数据分割，确定显示数字 【注意，数字是32位，每个数字4位，用hex码刚好每个数字4个二进制可表示】
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

    // 数码管点亮效果展示
  always @ (posedge clk, negedge rst) begin
    if (rst == 1'b0) begin
        seven_tube_seg_n <= 8'hff;

    end

    else
    //根据需要的数字进行选择数码管亮灭组合
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
        // 此处有所更改，将F改为 “-”
        // 4'd15    :  seven_tube_seg_n <= 8'h8e;
        4'd15    :  seven_tube_seg_n <= 8'hbf;
        default        :  seven_tube_seg_n <= 8'hff;
      endcase
  end


endmodule
