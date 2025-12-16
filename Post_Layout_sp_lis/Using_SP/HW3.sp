.inc 'HW3adder.sp'
.global vdd
.subckt threeadder x0 y0 ci0 s0 x1 y1 ci1 s1 x2 y2 ci2 s2 cout vdd gnd
Xadder1 x0 y0 ci0 s0 ci1 vdd gnd adder
Xadder2 x1 y1 ci1 s1 ci2 vdd gnd adder
Xadder3 x2 y2 ci2 s2 cout vdd gnd adder
.ends threeadder
