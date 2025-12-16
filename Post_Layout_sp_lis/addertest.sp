.protect
.lib '/cad/cell_lib/cic018.l' tt
.inc 'HW3.sp'
**.inc 'HW3adder.sp'
.inc 'addlay.pex.netlist'
.unprotect
.param Vsupply=1
.global VDD GND
VVDD VDD 0 dc Vsupply
VGND GND 0 dc 0

**Xadder ain bin cin sum cou vdd gnd adder
Xthreeadder x0 y0 ci0 s0 x1 y1 ci1 s1 x2 y2 ci2 s2 cout vdd gnd threeadder
XADDLAYY  CI1_PEX Y0 CI0 GND VDD S0_PEX CI2_PEX X1 Y1 S1_PEX COUT_PEX X2 Y2 S2_PEX X0 ADDLAYY

Vx0 X0 gnd pwl 0ns 1V 5ns 1V 7ns 0V 12ns 0V 14ns 1V 19ns 1V 21ns 0V 26ns 0V 28ns 1V 33ns 1V 35ns 1V 40ns 1V 42ns 0V 47ns 0V
Vx1 X1 gnd pwl 0ns 1V 5ns 1V 7ns 0V 12ns 0V 14ns 0V 19ns 0V 21ns 1V 26ns 1V 28ns 1V 33ns 1V 35ns 1V 40ns 1V 42ns 1V 47ns 1V
Vx2 X2 gnd pwl 0ns 1V 5ns 1V 7ns 0V 12ns 0V 14ns 0V 19ns 0V 21ns 0V 26ns 0V 28ns 0V 33ns 0V 35ns 1V 40ns 1V 42ns 1V 47ns 1V
Vy0 Y0 gnd pwl 0ns 1V 5ns 1V 7ns 0V 12ns 0V 14ns 0V 19ns 0V 21ns 1V 26ns 1V 28ns 0V 33ns 0V 35ns 1V 40ns 1V 42ns 0V 47ns 0V
Vy1 Y1 gnd pwl 0ns 1V 5ns 1V 7ns 0V 12ns 0V 14ns 1V 19ns 1V 21ns 1V 26ns 1V 28ns 0V 33ns 0V 35ns 0V 40ns 0V 42ns 0V 47ns 0V
Vy2 Y2 gnd pwl 0ns 1V 5ns 1V 7ns 0V 12ns 0V 14ns 0V 19ns 0V 21ns 0V 26ns 0V 28ns 1V 33ns 1V 35ns 1V 40ns 1V 42ns 0V 47ns 0V
Vci0 CI0 gnd pwl 0ns 0V 5ns 0V 7ns 1V 12ns 1V 14ns 0V 19ns 0V 21ns 0V 26ns 0V 28ns 0V 33ns 0V 35ns 0V 40ns 0V 42ns 1V 47ns 1V

.tran 0.01ns 47ns
.option post
.meas tran pwr avg power
.meas tran Tdelay
+trig v(x0) val=1*0.5 fall=1
+targ v(s2_pex) val=1*0.5 fall=1
.meas tran Tdelay1
+trig v(x0) val=1*0.5 rise=1
+targ v(s1_pex) val=1*0.5 rise=1
.meas tran Tdelay2
+trig v(x0) val=1*0.5 fall=2
+targ v(s2_pex) val=1*0.5 rise=1
.meas tran Tdelay3
+trig v(x0) val=1*0.5 rise=2
+targ v(s2_pex) val=1*0.5 rise=2
.meas tran Tdelay4
+trig v(x2) val=1*0.5 rise=1
+targ v(s2_pex) val=1*0.5 rise=3
.meas tran Tdelay5
+trig v(x0) val=1*0.5 fall=3
+targ v(s2_pex) val=1*0.5 rise=4
.end