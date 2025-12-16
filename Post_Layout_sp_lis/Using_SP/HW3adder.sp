
.subckt adder ain bin cin sum cou vdd gnd
MP1 n1 ain vdd vdd p_18 W=3u L=0.18u
MP2 n1 bin vdd vdd p_18 W=3u L=0.18u
MP3 n2 bin n1 vdd p_18 W=3u L=0.18u
MP4 n3 ain n2 vdd p_18 W=3u L=0.18u
MP5 n3 cin n1 vdd p_18 W=3u L=0.18u

MN1 n3 cin n4 gnd n_18 W=2u L=0.18u
MN2 n3 ain n5 gnd n_18 W=2u L=0.18u
MN3 n4 ain gnd gnd n_18 W=2u L=0.18u
MN4 n4 bin gnd gnd n_18 W=2u L=0.18u
MN5 n5 bin gnd gnd n_18 W=2u L=0.18u

MP14 cou n3 vdd vdd p_18 W=3u L=0.18u
MN6 cou n3 gnd gnd n_18 W=2u L=0.18u

MP6 n6 cin vdd vdd p_18 W=3u L=0.18u
MP7 n6 ain vdd vdd p_18 W=3u L=0.18u
MP8 n6 bin vdd vdd p_18 W=3u L=0.18u
MP9 n7 ain n6 vdd p_18 W=3u L=0.18u
MP10 n8 bin n7 vdd p_18 W=3u L=0.18u
MP11 n9 n3 n6 vdd p_18 W=3u L=0.18u
MP12 n9 cin n8 vdd p_18 W=3u L=0.18u
MP13 sum n9 vdd vdd p_18 W=3u L=0.18u

MN7 n9 n3 n10 gnd n_18 W=2u L=0.18u
MN8 n10 ain gnd gnd n_18 W=2u L=0.18u
MN9 n10 bin gnd gnd n_18 W=2u L=0.18u
MN10 n10 cin gnd gnd n_18 W=2u L=0.18u
MN11 n9 cin n11 gnd n_18 W=2u L=0.18u
MN12 n11 ain n12 gnd n_18 W=2u L=0.18u
MN13 n12 bin gnd gnd n_18 W=2u L=0.18u
MN14 sum n9 gnd gnd n_18 W=2u L=0.18u


**C1 cou gnd 1fF
**C2 sum gnd 1fF
.ends

