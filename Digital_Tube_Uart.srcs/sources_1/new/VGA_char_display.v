// vga_char_display.v  
`timescale 1ns / 1ps  
  
module vga_char_display(  
    input               clk,  
    input               rst,  
    input      [7:0]    data,
    output reg [2:0]    r,  
    output reg [2:0]    g,  
    output reg [1:0]    b,  
    output              hs,  
    output              vs  
    );  
  
    // ��ʾ������ʾ����  
    parameter UP_BOUND = 31;  
    parameter DOWN_BOUND = 510;  
    parameter LEFT_BOUND = 144;  
    parameter RIGHT_BOUND = 783;  
  
    // ��Ļ���������ַ�����ʾ���� ���޸�  8λ�ĸ� 8-1  7λ��*8������ 56-1
    parameter up_pos = 43;  
    parameter down_pos = 50;  
    parameter left_pos = 155;  
    parameter right_pos = 210;  
    wire [7:0] p[55:0];  //������ʾ�������� ���޸�
    
    // ����Ƶ��Ϊ25Mhz
    wire pclk;  
    reg [1:0] count;  
    //ע��������ݳ�ʼ��
    reg [9:0] hcount=0, vcount=0;  
    // wire [7:0] data = 8'b0000_0111;
  
    RAM_set u_ram_0 (  
        .clk(clk),  
        .rst(rst),  
        .data(data[0]),  
        // .data(data),  
        .col0(p[0]),  
        .col1(p[1]),  
        .col2(p[2]),  
        .col3(p[3]),  
        .col4(p[4]),  
        .col5(p[5]),  
        .col6(p[6])  
    );  
    RAM_set u_ram_1 (  
        .clk(clk),  
        .rst(rst),  
        .data(data[1]), 
        // .data(2),  
        .col0(p[7]),  
        .col1(p[8]),  
        .col2(p[9]),  
        .col3(p[10]),  
        .col4(p[11]),  
        .col5(p[12]),  
        .col6(p[13])  
    );
    RAM_set u_ram_2 (  
        .clk(clk),  
        .rst(rst),  
        .data(data[2]),  
        // .data(2),  
        .col0(p[14]),  
        .col1(p[15]),  
        .col2(p[16]),  
        .col3(p[17]),  
        .col4(p[18]),  
        .col5(p[19]),  
        .col6(p[20])  
    );
    RAM_set u_ram_3 (  
        .clk(clk),  
        .rst(rst),  
        .data(data[3]),  
        // .data(2),  
        .col0(p[21]),  
        .col1(p[22]),  
        .col2(p[23]),  
        .col3(p[24]),  
        .col4(p[25]),  
        .col5(p[26]),  
        .col6(p[27])  
    );
    RAM_set u_ram_4 (  
        .clk(clk),  
        .rst(rst),  
        .data(data[4]),  
        // .data(2),  
        .col0(p[28]),  
        .col1(p[29]),  
        .col2(p[30]),  
        .col3(p[31]),  
        .col4(p[32]),  
        .col5(p[33]),  
        .col6(p[34])  
    );  
    RAM_set u_ram_5 (  
        .clk(clk),  
        .rst(rst),  
        .data(data[5]),  
        // .data(2),  
        .col0(p[35]),  
        .col1(p[36]),  
        .col2(p[37]),  
        .col3(p[38]),  
        .col4(p[39]),  
        .col5(p[40]),  
        .col6(p[41])  
    ); 
    RAM_set u_ram_6 (  
        .clk(clk),  
        .rst(rst),  
        .data(data[6]),  
        // .data(2),  
        .col0(p[42]),  
        .col1(p[43]),  
        .col2(p[44]),  
        .col3(p[45]),  
        .col4(p[46]),  
        .col5(p[47]),  
        .col6(p[48])  
    ); 
        RAM_set u_ram_7 (  
        .clk(clk),  
        .rst(rst),  
        .data(data[7]),  
        // .data(2),  
        .col0(p[49]),  
        .col1(p[50]),  
        .col2(p[51]),  
        .col3(p[52]),  
        .col4(p[53]),  
        .col5(p[54]),  
        .col6(p[55])  
    ); 
      
    // // ������ �Ƿ�����
    // reg [7:0] p_tmp[13:0] = 0;
    // assign  p_tmp = p;

    // �������ʱ��25MHz  
    assign pclk = count[1];  
    always @ (posedge clk or posedge rst)  
    begin  
        if (!rst)  
            count <= 0;  
        else  
            count <= count+1;  
    end  
      
    // �м�������ͬ��  
    assign hs = (hcount < 96) ? 0 : 1;  
    always @ (posedge pclk or posedge rst)  
    begin  
        if (!rst)  
            hcount <= 0;  
        else if (hcount == 799)  
            hcount <= 0;  
        else  
            hcount <= hcount+1;  
    end  
      
    // �м����볡ͬ��  
    assign vs = (vcount < 2) ? 0 : 1;  
    always @ (posedge pclk or posedge rst)  
    begin  
        if (!rst)  
            vcount <= 0;  
        else if (hcount == 799) begin  
            if (vcount == 520)  
                vcount <= 0;  
            else  
                vcount <= vcount+1;  
        end  
        else  
            vcount <= vcount;  
    end  
      
    // ������ʾ�ź�ֵ  
    always @ (posedge pclk or posedge rst)  
    begin  
        if (!rst) begin  
            r <= 0;  
            g <= 0;  
            b <= 0;  
        end  
        else if (vcount>=UP_BOUND && vcount<=DOWN_BOUND  
                && hcount>=LEFT_BOUND && hcount<=RIGHT_BOUND) begin  
            if (vcount>=up_pos && vcount<=down_pos  
                    && hcount>=left_pos && hcount<=right_pos) begin  
                if (p[hcount-left_pos][vcount-up_pos]) begin  
                    r <= 3'b110;  
                    g <= 3'b101;  
                    b <= 2'b01;  
                end  
                else begin  
                    r <= 3'b001;  
                    g <= 3'b011;  
                    b <= 2'b11;  
                end  
            end  
            else begin  
                r <= 3'b001;  
                g <= 3'b100;  
                b <= 2'b01;  
            end  
        end  
        else begin  
            r <= 3'b000;  
            g <= 3'b000;  
            b <= 2'b00;  
        end  
    end  
  
endmodule  