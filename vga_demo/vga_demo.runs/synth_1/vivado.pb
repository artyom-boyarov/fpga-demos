
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2c
aC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top top -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
23480Z8-7075h px� 
�
%s*synth2z
xStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 961.078 ; gain = 468.828
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
	clk_25mhz2
wire2Z
VC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/top.sv2
458@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2Z
VC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/top.sv2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02
 2�
C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.runs/synth_1/.Xil/Vivado-21792-artyom-hp/realtime/clk_wiz_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02
 2
02
12�
C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.runs/synth_1/.Xil/Vivado-21792-artyom-hp/realtime/clk_wiz_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
vga_counter2
 2b
^C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/vga_counter.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_counter2
 2
02
12b
^C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/vga_counter.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
effects2
 2^
ZC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/effects.sv2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
raster_bars2
 2b
^C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/raster_bars.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
raster_bars2
 2
02
12b
^C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/raster_bars.sv2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
effects2
 2
02
12^
ZC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/effects.sv2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12Z
VC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/top.sv2
238@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
led2
top2Z
VC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/sources_1/new/top.sv2
278@Z8-3848h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
raster_barsZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
de2
raster_barsZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[15]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[14]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[13]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[12]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[11]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[10]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[9]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[8]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[7]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[6]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[5]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[4]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[3]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[2]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[1]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[0]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2
topZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1066.977 ; gain = 574.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1066.977 ; gain = 574.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1066.977 ; gain = 574.727
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1066.9772
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2~
zc:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
impl_clk25mhz	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2~
zc:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.gen/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2
impl_clk25mhz	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2^
ZC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/constrs_1/new/basys3.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2^
ZC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/constrs_1/new/basys3.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2\
ZC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.srcs/constrs_1/new/basys3.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1160.3202
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

1160.3202
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:18 . Memory (MB): peak = 1160.320 ; gain = 668.070
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:18 . Memory (MB): peak = 1160.320 ; gain = 668.070
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:18 . Memory (MB): peak = 1160.320 ; gain = 668.070
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:18 . Memory (MB): peak = 1160.320 ; gain = 668.070
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   19 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               19 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 6     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 6     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[15]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[14]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[13]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[12]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[11]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[10]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[9]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[8]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[7]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[6]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[5]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[4]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[3]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[2]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[1]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[0]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2
topZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:21 . Memory (MB): peak = 1160.320 ; gain = 668.070
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:27 . Memory (MB): peak = 1268.801 ; gain = 776.551
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:27 . Memory (MB): peak = 1299.445 ; gain = 807.195
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:27 . Memory (MB): peak = 1300.254 ; gain = 808.004
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2y
wFinished IO Insertion : Time (s): cpu = 00:00:19 ; elapsed = 00:00:33 . Memory (MB): peak = 1496.312 ; gain = 1004.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:19 ; elapsed = 00:00:33 . Memory (MB): peak = 1496.312 ; gain = 1004.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:19 ; elapsed = 00:00:33 . Memory (MB): peak = 1496.312 ; gain = 1004.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:19 ; elapsed = 00:00:33 . Memory (MB): peak = 1496.312 ; gain = 1004.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:33 . Memory (MB): peak = 1496.312 ; gain = 1004.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:33 . Memory (MB): peak = 1496.312 ; gain = 1004.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |clk_wiz_0     |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|      |Cell    |Count |
h px� 
3
%s*synth2
+------+--------+------+
h px� 
3
%s*synth2
|1     |clk_wiz |     1|
h px� 
3
%s*synth2
|2     |CARRY4  |     3|
h px� 
3
%s*synth2
|3     |LUT1    |    11|
h px� 
3
%s*synth2
|4     |LUT2    |    24|
h px� 
3
%s*synth2
|5     |LUT3    |     7|
h px� 
3
%s*synth2
|6     |LUT4    |     8|
h px� 
3
%s*synth2
|7     |LUT5    |    16|
h px� 
3
%s*synth2
|8     |LUT6    |    10|
h px� 
3
%s*synth2
|9     |FDRE    |    44|
h px� 
3
%s*synth2
|10    |FDSE    |    12|
h px� 
3
%s*synth2
|11    |IBUF    |     4|
h px� 
3
%s*synth2
|12    |OBUF    |    14|
h px� 
3
%s*synth2
|13    |OBUFT   |    16|
h px� 
3
%s*synth2
+------+--------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:33 . Memory (MB): peak = 1496.312 ; gain = 1004.062
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 30 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:31 . Memory (MB): peak = 1496.312 ; gain = 910.719
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:33 . Memory (MB): peak = 1496.312 ; gain = 1004.062
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1496.3122
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
3Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1496.3122
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

70ed09f0Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322
622
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:212

00:00:392

1496.3122

1196.027Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0032

1496.3122
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2S
QC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/vga_demo/vga_demo.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Jan  8 11:13:59 2025Z17-206h px� 


End Record