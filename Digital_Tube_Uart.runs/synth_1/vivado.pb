
v
Command: %s
53*	vivadotcl2E
1synth_design -top uart_top -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 853.828 ; gain = 234.480
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
uart_top2default:default2
 2default:default2o
YF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/uart_top.v2default:default2
232default:default8@Z8-6157h px? 
b
%s
*synth2J
6	Parameter UART_BPS bound to: 115200 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/uart_tx.v2default:default2
12default:default8@Z8-6157h px? 
h
%s
*synth2P
<	Parameter SYS_CLK_FRE bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter BPS bound to: 115200 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter BPS_CNT bound to: 868 - type: integer 
2default:defaulth p
x
? 
?
default block is never used226*oasys2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/uart_tx.v2default:default2
312default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
12default:default2
12default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/uart_tx.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/uart_rx.v2default:default2
12default:default8@Z8-6157h px? 
]
%s
*synth2E
1	Parameter BPS bound to: 115200 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter SYS_CLK_FRE bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter BPS_CNT bound to: 868 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
22default:default2
12default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/uart_rx.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

KW4_change2default:default2
 2default:default2q
[F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KW4_change.v2default:default2
232default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter T_1ms bound to: 99999 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter T_500ms bound to: 49999999 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter T_1s bound to: 99999999 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
decoder_3_82default:default2
 2default:default2r
\F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/decoder_3_8.v2default:default2
22default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
decoder_3_82default:default2
 2default:default2
32default:default2
12default:default2r
\F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/decoder_3_8.v2default:default2
22default:default8@Z8-6155h px? 
?
default block is never used226*oasys2q
[F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KW4_change.v2default:default2
1172default:default8@Z8-226h px? 
?
default block is never used226*oasys2q
[F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KW4_change.v2default:default2
1392default:default8@Z8-226h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2

cnt_1s_reg2default:default2q
[F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KW4_change.v2default:default2
732default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
Two_count_reg2default:default2q
[F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KW4_change.v2default:default2
852default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
cnt_1s_en_reg2default:default2q
[F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KW4_change.v2default:default2
872default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

KW4_change2default:default2
 2default:default2
42default:default2
12default:default2q
[F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KW4_change.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
Uart_led_show2default:default2
 2default:default2t
^F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/Uart_led_show.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
filter2default:default2
 2default:default2l
VF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KEY_1.v2default:default2
12default:default8@Z8-6157h px? 
O
%s
*synth27
#	Parameter IDLE bound to: 4'b0001 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter FILTER0 bound to: 4'b0010 
2default:defaulth p
x
? 
O
%s
*synth27
#	Parameter DOWN bound to: 4'b0100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter FILTER1 bound to: 4'b1000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter full_cnt bound to: 9'b110001111 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
filter2default:default2
 2default:default2
52default:default2
12default:default2l
VF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/KEY_1.v2default:default2
12default:default8@Z8-6155h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2#
uart_data_count2default:default2t
^F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/Uart_led_show.v2default:default2
1032default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Uart_led_show2default:default2
 2default:default2
62default:default2
12default:default2t
^F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/Uart_led_show.v2default:default2
232default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2#
uart_data_count2default:default2
22default:default2!
Uart_led_show2default:default2o
YF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/uart_top.v2default:default2
972default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2$
vga_char_display2default:default2
 2default:default2w
aF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/VGA_char_display.v2default:default2
42default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter UP_BOUND bound to: 31 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter DOWN_BOUND bound to: 510 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter LEFT_BOUND bound to: 144 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter RIGHT_BOUND bound to: 783 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter up_pos bound to: 43 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter down_pos bound to: 50 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter left_pos bound to: 155 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter right_pos bound to: 210 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
RAM_set2default:default2
 2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAM_set2default:default2
 2default:default2
72default:default2
12default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
vga_char_display2default:default2
 2default:default2
82default:default2
12default:default2w
aF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/VGA_char_display.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_top2default:default2
 2default:default2
92default:default2
12default:default2o
YF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/uart_top.v2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 925.359 ; gain = 306.012
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 925.359 ; gain = 306.012
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 925.359 ; gain = 306.012
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0312default:default2
925.3592default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2v
`F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/constrs_2/new/Tube_Uart_TOP.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2v
`F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/constrs_2/new/Tube_Uart_TOP.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2t
`F:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/constrs_2/new/Tube_Uart_TOP.xdc2default:default2.
.Xil/uart_top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1024.5272default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
1024.5272default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1024.527 ; gain = 405.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1024.527 ; gain = 405.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1024.527 ; gain = 405.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
filter2default:defaultZ8-802h px? 
?
merging register '%s' into '%s'3619*oasys2!
col6_reg[7:0]2default:default2!
col0_reg[7:0]2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
272default:default8@Z8-4471h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                    IDLE |                             0001 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 FILTER0 |                             0010 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                    DOWN |                             0100 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 FILTER1 |                             1000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
	state_reg2default:default2
filter2default:defaultZ8-3898h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1024.527 ; gain = 405.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 57    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 14    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  39 Input      7 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
<
%s
*synth2$
Module uart_tx 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module uart_rx 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
@
%s
*synth2(
Module decoder_3_8 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module KW4_change 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
;
%s
*synth2#
Module filter 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
B
%s
*synth2*
Module Uart_led_show 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
<
%s
*synth2$
Module RAM_set 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  39 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
E
%s
*synth2-
Module vga_char_display 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
merging register '%s' into '%s'3619*oasys2?
+vga_char_display_ints/u_ram_1/col0_reg[7:0]2default:default2?
+vga_char_display_ints/u_ram_0/col0_reg[7:0]2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
212default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2?
+vga_char_display_ints/u_ram_2/col0_reg[7:0]2default:default2?
+vga_char_display_ints/u_ram_0/col0_reg[7:0]2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
212default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2?
+vga_char_display_ints/u_ram_3/col0_reg[7:0]2default:default2?
+vga_char_display_ints/u_ram_0/col0_reg[7:0]2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
212default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2?
+vga_char_display_ints/u_ram_4/col0_reg[7:0]2default:default2?
+vga_char_display_ints/u_ram_0/col0_reg[7:0]2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
212default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2?
+vga_char_display_ints/u_ram_5/col0_reg[7:0]2default:default2?
+vga_char_display_ints/u_ram_0/col0_reg[7:0]2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
212default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2?
+vga_char_display_ints/u_ram_6/col0_reg[7:0]2default:default2?
+vga_char_display_ints/u_ram_0/col0_reg[7:0]2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
212default:default8@Z8-4471h px? 
?
merging register '%s' into '%s'3619*oasys2?
+vga_char_display_ints/u_ram_7/col0_reg[7:0]2default:default2?
+vga_char_display_ints/u_ram_0/col0_reg[7:0]2default:default2n
XF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.srcs/sources_1/new/RAM_set.v2default:default2
212default:default8@Z8-4471h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
u_uart_rx/clk_cnt_reg[10]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
u_uart_rx/clk_cnt_reg[11]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
u_uart_rx/clk_cnt_reg[12]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
u_uart_rx/clk_cnt_reg[13]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
u_uart_rx/clk_cnt_reg[14]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
u_uart_rx/clk_cnt_reg[15]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!u_uart_tx_change/uart_data_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!u_uart_tx_change/uart_data_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!u_uart_tx_change/uart_data_reg[5]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!u_uart_tx_change/uart_data_reg[4]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!u_uart_tx_change/uart_data_reg[3]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!u_uart_tx_change/uart_data_reg[2]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 u_uart_tx_change/clk_cnt_reg[14]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 u_uart_tx_change/clk_cnt_reg[15]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 u_uart_tx_change/clk_cnt_reg[13]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 u_uart_tx_change/clk_cnt_reg[12]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 u_uart_tx_change/clk_cnt_reg[11]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys24
 u_uart_tx_change/clk_cnt_reg[10]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col1_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col5_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col4_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col3_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col2_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col1_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col3_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col2_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col1_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col5_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col4_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col5_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col4_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col3_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col2_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col1_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col5_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col4_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col3_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col2_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col1_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col5_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col4_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col3_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col2_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col1_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col5_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col4_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col5_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col4_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col3_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col2_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col2_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col1_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col3_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col2_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col1_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col0_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col5_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col4_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col3_reg[7]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col1_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col5_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col4_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col3_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col2_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_4/col1_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col3_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col2_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col1_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col5_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_3/col4_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col5_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col4_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col3_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col2_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_2/col1_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col5_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col4_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col3_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col2_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_1/col1_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col5_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col4_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col3_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col2_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col1_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col5_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col4_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col5_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col4_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col3_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_5/col2_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col2_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col1_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col3_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col2_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_7/col1_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_0/col0_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col5_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col1_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col4_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2=
)vga_char_display_ints/u_ram_6/col3_reg[6]2default:default2
FDC2default:default2=
)vga_char_display_ints/u_ram_0/col3_reg[3]2default:defaultZ8-3886h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\vga_char_display_ints/u_ram_6/col5_reg[0] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2=
)\KW4_change_ints/seven_tube_seg_n_reg[7] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1024.527 ; gain = 405.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
?
%s*synth2i
U+------------+------------------------------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2j
V|Module Name | RTL Object                         | Depth x Width | Implemented As | 
2default:defaulth px? 
?
%s*synth2i
U+------------+------------------------------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2j
V|RAM_set     | col1                               | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|RAM_set     | col3                               | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|RAM_set     | col4                               | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|RAM_set     | col5                               | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_7/col5 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_7/col4 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_7/col3 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_7/col1 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_6/col5 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_6/col4 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_6/col3 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_6/col1 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_5/col5 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_5/col4 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_5/col3 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_5/col1 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_4/col5 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_4/col4 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_4/col3 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_4/col1 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_3/col5 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_3/col4 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_3/col3 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_3/col1 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_2/col5 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_2/col4 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_2/col3 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_2/col1 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_1/col5 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_1/col4 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_1/col3 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_1/col1 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_0/col5 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_0/col4 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_0/col3 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V|uart_top    | vga_char_display_ints/u_ram_0/col1 | 64x7          | LUT            | 
2default:defaulth px? 
?
%s*synth2j
V+------------+------------------------------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 1024.527 ; gain = 405.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1024.527 ; gain = 405.180
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 1033.227 ; gain = 413.879
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1038.852 ; gain = 419.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1038.852 ; gain = 419.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1038.852 ; gain = 419.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1038.852 ; gain = 419.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1038.852 ; gain = 419.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1038.852 ; gain = 419.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    10|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    11|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    76|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    37|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    54|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    65|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |   107|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |     4|
2default:defaulth px? 
D
%s*synth2,
|10    |FDCE   |   181|
2default:defaulth px? 
D
%s*synth2,
|11    |FDPE   |    12|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |     3|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |    27|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
g
%s
*synth2O
;+------+------------------------+-----------------+------+
2default:defaulth p
x
? 
g
%s
*synth2O
;|      |Instance                |Module           |Cells |
2default:defaulth p
x
? 
g
%s
*synth2O
;+------+------------------------+-----------------+------+
2default:defaulth p
x
? 
g
%s
*synth2O
;|1     |top                     |                 |   588|
2default:defaulth p
x
? 
g
%s
*synth2O
;|2     |  KW4_change_ints       |KW4_change       |    75|
2default:defaulth p
x
? 
g
%s
*synth2O
;|3     |  Uart_led_show_ints    |Uart_led_show    |   135|
2default:defaulth p
x
? 
g
%s
*synth2O
;|4     |    filter_up_ints      |filter           |    74|
2default:defaulth p
x
? 
g
%s
*synth2O
;|5     |  u_uart_rx             |uart_rx          |    85|
2default:defaulth p
x
? 
g
%s
*synth2O
;|6     |  u_uart_tx_change      |uart_tx          |    51|
2default:defaulth p
x
? 
g
%s
*synth2O
;|7     |  vga_char_display_ints |vga_char_display |   211|
2default:defaulth p
x
? 
g
%s
*synth2O
;|8     |    u_ram_0             |RAM_set          |    12|
2default:defaulth p
x
? 
g
%s
*synth2O
;|9     |    u_ram_1             |RAM_set_0        |     5|
2default:defaulth p
x
? 
g
%s
*synth2O
;|10    |    u_ram_2             |RAM_set_1        |    12|
2default:defaulth p
x
? 
g
%s
*synth2O
;|11    |    u_ram_3             |RAM_set_2        |    14|
2default:defaulth p
x
? 
g
%s
*synth2O
;|12    |    u_ram_4             |RAM_set_3        |     7|
2default:defaulth p
x
? 
g
%s
*synth2O
;|13    |    u_ram_5             |RAM_set_4        |    10|
2default:defaulth p
x
? 
g
%s
*synth2O
;|14    |    u_ram_6             |RAM_set_5        |    36|
2default:defaulth p
x
? 
g
%s
*synth2O
;|15    |    u_ram_7             |RAM_set_6        |     9|
2default:defaulth p
x
? 
g
%s
*synth2O
;+------+------------------------+-----------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1038.852 ; gain = 419.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:33 ; elapsed = 00:00:46 . Memory (MB): peak = 1038.852 ; gain = 320.336
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 1038.852 ; gain = 419.504
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0112default:default2
1038.8522default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
142default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1042.0982default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1462default:default2
52default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:562default:default2
00:01:012default:default2
1042.0982default:default2
735.6562default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1042.0982default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2i
UF:/FPGA/FPGA_practice_1/Digital_Tube_Uart/Digital_Tube_Uart.runs/synth_1/uart_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file uart_top_utilization_synth.rpt -pb uart_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Nov 10 20:56:54 20212default:defaultZ17-206h px? 


End Record