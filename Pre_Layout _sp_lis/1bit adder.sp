**full adder 
.lib '/cad/cell_lib/cic018.l' tt

**.subckt adder ain bin cin sum cou vdd gnd
MP1 n1 ain vdd vdd p_18 W=3u L=0.18u
MP2 n1 bin vdd vdd p_18 W=3u L=0.18u
MP3 n2 bin n1 n1 p_18 W=3u L=0.18u
MP4 n3 ain n2 n2 p_18 W=3u L=0.18u
MP5 n3 cin n1 n1 p_18 W=3u L=0.18u

MN1 n3 cin n4 n4 n_18 W=2u L=0.18u
MN2 n3 ain n5 n5 n_18 W=2u L=0.18u
MN3 n4 ain gnd gnd n_18 W=2u L=0.18u
MN4 n4 bin gnd gnd n_18 W=22u L=0.18u
MN5 n5 bin gnd gnd n_18 W=2u L=0.18u

MP14 cou n3 vdd vdd p_18 W=3u L=0.18u
MN6 cou n3 gnd gnd n_18 W=1u L=0.18u

MP6 n6 cin vdd vdd p_18 W=3u L=0.18u
MP7 n6 ain vdd vdd p_18 W=3u L=0.18u
MP8 n6 bin vdd vdd p_18 W=3u L=0.18u
MP9 n7 ain n6 n6 p_18 W=3u L=0.18u
MP10 n8 bin n7 n7 p_18 W=3u L=0.18u
MP11 n9 n3 n6 n6 p_18 W=3u L=0.18u
MP12 n9 cin n8 n8 p_18 W=3u L=0.18u
MP13 sum n9 vdd vdd p_18 W=3u L=0.18u

MN7 n9 n3 n10 n10 n_18 W=2u L=0.18u
MN8 n10 ain gnd gnd n_18 W=2u L=0.18u
MN9 n10 bin gnd gnd n_18 W=2u L=0.18u
MN10 n10 cin gnd gnd n_18 W=2u L=0.18u
MN11 n9 cin n11 n11 n_18 W=2u L=0.18u
MN12 n11 ain n12 n12 n_18 W=2u L=0.18u
MN13 n12 bin gnd gnd n_18 W=2u L=0.18u
MN14 sum n9 gnd gnd n_18 W=2u L=0.18u


C1 cou gnd 1fF
C2 sum gnd 1fF
**.ends

**Xadder1 x0 y0 ci0 s0 ci1 vdd gnd adder
**Xadder2 x1 y1 ci1 s1 ci2 vdd gnd adder
**Xadder3 x2 y2 ci2 s2 cout vdd gnd adder

VVdd vdd gnd dc 1V



Vx0 ain gnd pwl 0ns 0V 5ns 0V 7ns 1V 12ns 1V 14ns 0V 19ns 0V 21ns 1V 26ns 1V 28ns 0V 33ns 0V 35ns 1V 40ns 1V 42ns 1V 47ns 1V 49ns 1V 54ns 1V 56ns 0V 61ns 0V 63ns 1V 68ns 1V 70ns 1V 75ns 1V 77ns 1V 82ns 1V 84ns 1V 89ns 1V 91ns 0V 96ns 0V 98ns 1V 103ns 1V 105ns 1V 110ns 1V 112ns 0V 117ns 0V
Vx1 bin gnd pwl 0ns 0V 5ns 0V 7ns 1V 12ns 1V 14ns 0V 19ns 0V 21ns 1V 26ns 1V 28ns 1V 33ns 1V 35ns 1V 40ns 1V 42ns 0V 47ns 0V 49ns 0V 54ns 0V 56ns 1V 61ns 1V 63ns 0V 68ns 0V 70ns 0V 75ns 0V 77ns 0V 82ns 0V 84ns 1V 89ns 1V 91ns 0V 96ns 0V 98ns 1V 103ns 1V 105ns 1V 110ns 1V 112ns 0V 117ns 0V
Vx2 cin gnd pwl 0ns 0V 5ns 0V 7ns 0V 12ns 0V 14ns 1V 19ns 1V 21ns 0V 26ns 0V 28ns 0V 33ns 0V 35ns 0V 40ns 0V 42ns 0V 47ns 0V 49ns 0V 54ns 0V 56ns 1V 61ns 1V 63ns 0V 68ns 0V 70ns 1V 75ns 1V 77ns 0V 82ns 0V 84ns 0V 89ns 0V 91ns 0V 96ns 0V 98ns 1V 103ns 1V 105ns 1V 110ns 1V 112ns 0V 117ns 0V

.tran 0.1ns 117ns
.option post
.temp 25
.print v(ain)
.print v(bin)
.print v(cin)
.print v(cou)
.print v(sum)
.meas tran Tdelay
+trig v(cin) val=1*0.5 rise=1
+targ v(sum) val=1*0.5 rise=2
.meas tran Tdelay1
+trig v(ain) val=1*0.5 fall=2
+targ v(sum) val=1*0.5 rise=3
.meas tran Tdelay2
+trig v(bin) val=1*0.5 fall=2
+targ v(sum) val=1*0.5 rise=4
.meas tran Tdelay3
+trig v(ain) val=1*0.5 fall=3
+targ v(sum) val=1*0.5 fall=4
.measure tran Tdelay4
+trig v(cin) val=1*0.5 rise=3
+targ v(sum) val=1*0.5 fall=5
.meas tran Tdelay5
+trig v(bin) val=1*0.5 rise=4
+targ v(sum) val=1*0.5 fall=6
.meas tran Tdelay6
+trig v(ain) val=1*0.5 rise=5
+targ v(sum) val=1*0.5 rise=7
.measure tran Tdelay7
+trig v(ain) val=1*0.5 fall=5
+targ v(sum) val=1*0.5 fall=7
.meas tran Tdelay8
+trig v(ain) val=1*0.5 fall=1
+targ v(cou) val=1*0.5 fall=1
.meas tran Tdelay9
+trig v(ain) val=1*0.5 fall=2
+targ v(cou) val=1*0.5 fall=2
.meas tran Tdelay10
+trig v(bin) val=1*0.5 fall=2
+targ v(cou) val=1*0.5 fall=3
.meas tran Tdelay11
+trig v(ain) val=1*0.5 fall=3
+targ v(cou) val=1*0.5 rise=4
.meas tran Tdelay12
+trig v(cin) val=1*0.5 rise=3
+targ v(cou) val=1*0.5 rise=5
.meas tran Tdelay13
+trig v(bin) val=1*0.5 rise=4
+targ v(cou) val=1*0.5 rise=6
.meas tran Tdelay14
+trig v(ain) val=1*0.5 rise=5
+targ v(cou) val=1*0.5 rise=7
.meas tran Tdelay15
+trig v(ain) val=1*0.5 fall=5
+targ v(cou) val=1*0.5 fall=7
.end