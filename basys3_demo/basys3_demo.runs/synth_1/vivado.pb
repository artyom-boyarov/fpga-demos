
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/artyo/Documents/src/verilog/basys3_demo/basys3_demo.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2c
aC:/Users/artyo/Documents/src/verilog/basys3_demo/basys3_demo.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
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
M
#Helper process launched with PID %s4824*oasys2
9032Z8-7075h px� 
�
%s*synth2z
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:07 . Memory (MB): peak = 954.473 ; gain = 467.902
h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2`
\C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/top.sv2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
BUTTON_COUNTER2
 2k
gC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/button_counter.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUTTON_COUNTER2
 2
02
12k
gC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/button_counter.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
SEVEN_SEG_CONTROLLER2
 2q
mC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/seven_seg_controller.sv2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
BCD2
 2`
\C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/BCD.sv2
238@Z8-6157h px� 
�
default block is never used226*oasys2`
\C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/BCD.sv2
298@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BCD2
 2
02
12`
\C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/BCD.sv2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SEVEN_SEG_CONTROLLER2
 2
02
12q
mC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/seven_seg_controller.sv2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
two_stage_sync2
 2k
gC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/two_stage_sync.sv2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
two_stage_sync2
 2
02
12k
gC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/two_stage_sync.sv2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12`
\C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/top.sv2
238@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
dp2
top2`
\C:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.srcs/sources_1/new/top.sv2
328@Z8-3848h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnL2
BUTTON_COUNTERZ8-7129h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnR2
BUTTON_COUNTERZ8-7129h px� 
h
9Port %s in module %s is either unconnected or has no load4866*oasys2
dp2
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
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2
topZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1059.395 ; gain = 572.824
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1059.395 ; gain = 572.824
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:09 . Memory (MB): peak = 1059.395 ; gain = 572.824
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
00:00:00.0012

1059.3952
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
Parsing XDC File [%s]
179*designutils2L
HC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/Basys3_Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2L
HC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/Basys3_Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2J
HC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/Basys3_Master.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1141.7302
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
00:00:00.0032

1141.7302
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
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:18 . Memory (MB): peak = 1141.730 ; gain = 655.160
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:18 . Memory (MB): peak = 1141.730 ; gain = 655.160
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:18 . Memory (MB): peak = 1141.730 ; gain = 655.160
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
v
3inferred FSM for state register '%s' in module '%s'802*oasys2
btn_state_reg2
BUTTON_COUNTERZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  BTN_UP |                                0 |                               00
h p
x
� 
y
%s
*synth2a
_                BTN_DOWN |                                1 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
btn_state_reg2

sequential2
BUTTON_COUNTERZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:19 . Memory (MB): peak = 1141.730 ; gain = 655.160
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
.	                4 Bit    Registers := 5     
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
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 3     
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
h
9Port %s in module %s is either unconnected or has no load4866*oasys2
dp2
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
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2
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
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:21 . Memory (MB): peak = 1141.730 ; gain = 655.160
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:27 . Memory (MB): peak = 1249.375 ; gain = 762.805
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
}Finished Timing Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:27 . Memory (MB): peak = 1249.375 ; gain = 762.805
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
|Finished Technology Mapping : Time (s): cpu = 00:00:15 ; elapsed = 00:00:27 . Memory (MB): peak = 1259.762 ; gain = 773.191
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
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:33 . Memory (MB): peak = 1475.871 ; gain = 989.301
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:33 . Memory (MB): peak = 1475.871 ; gain = 989.301
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:20 ; elapsed = 00:00:33 . Memory (MB): peak = 1475.871 ; gain = 989.301
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:20 ; elapsed = 00:00:33 . Memory (MB): peak = 1475.871 ; gain = 989.301
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:33 . Memory (MB): peak = 1475.871 ; gain = 989.301
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:20 ; elapsed = 00:00:33 . Memory (MB): peak = 1475.871 ; gain = 989.301
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
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |     9|
h px� 
2
%s*synth2
|3     |LUT1   |     2|
h px� 
2
%s*synth2
|4     |LUT2   |    20|
h px� 
2
%s*synth2
|5     |LUT4   |     7|
h px� 
2
%s*synth2
|6     |LUT5   |     1|
h px� 
2
%s*synth2
|7     |LUT6   |     4|
h px� 
2
%s*synth2
|8     |FDRE   |    49|
h px� 
2
%s*synth2
|9     |IBUF   |     4|
h px� 
2
%s*synth2
|10    |OBUF   |    27|
h px� 
2
%s*synth2
|11    |OBUFT  |     1|
h px� 
2
%s*synth2
+------+-------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:20 ; elapsed = 00:00:33 . Memory (MB): peak = 1475.871 ; gain = 989.301
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
GSynthesis finished with 0 errors, 0 critical warnings and 18 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:31 . Memory (MB): peak = 1475.871 ; gain = 906.965
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:20 ; elapsed = 00:00:33 . Memory (MB): peak = 1475.871 ; gain = 989.301
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

1475.8712
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
9Z29-17h px� 
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

1475.8712
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

ed21e035Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342
382
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

00:00:232

00:00:392

1475.8712

1181.723Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1475.8712
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2Y
WC:/Users/artyo/Desktop/fpga-hdl/fpga-demos/basys3_demo/basys3_demo.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Jan  8 09:34:01 2025Z17-206h px� 


End Record