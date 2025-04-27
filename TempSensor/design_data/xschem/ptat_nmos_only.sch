v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 20 -1100 420 -870 {flags=graph
y1=0.22
y2=0.76
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=125
divx=10
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
rainbow=1
legend=1
color=4
node=novar}
B 2 800 -1100 1200 -870 {flags=graph
y1=0.28
y2=0.63
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=125
divx=10
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
rainbow=1
legend=1
rawfile=$netlist_dir/ptat_nmos_only_varinpl.raw
color=4
node=vout}
B 2 800 -820 1200 -590 {flags=graph
y1=0.28
y2=0.57
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=125
divx=10
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
color=4
node=vout
rainbow=1
legend=1
rawfile=$netlist_dir/ptat_nmos_only_varinpw.raw}
B 2 800 -540 1200 -310 {flags=graph
y1=0.28
y2=0.92
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=125
divx=10
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
color=4
node=vout
rainbow=1
legend=1
rawfile=$netlist_dir/ptat_nmos_only_varoutl.raw}
B 2 800 -250 1200 -20 {flags=graph
y1=0.19
y2=0.65
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=125
divx=10
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
color=4
node=vout
rainbow=1
legend=1
rawfile=$netlist_dir/ptat_nmos_only_varoutw.raw}
T {DOI: 10.1109/smicnd.2005.1558746
Bibkey: CircuitsTemperatureSensors_Szermer.Napieralski_2005} 70 -140 0 0 0.4 0.4 {}
N 140 -510 140 -490 {lab=#net1}
N 140 -410 140 -390 {lab=#net2}
N 140 -310 140 -290 {lab=#net3}
N 180 -460 180 -410 {lab=#net2}
N 140 -410 180 -410 {lab=#net2}
N 140 -430 140 -410 {lab=#net2}
N 180 -360 180 -310 {lab=#net3}
N 140 -310 180 -310 {lab=#net3}
N 140 -330 140 -310 {lab=#net3}
N 580 -560 660 -560 {lab=GND}
N 580 -380 660 -380 {lab=Vdd}
N 140 -210 140 -190 {lab=GND}
N 400 -230 400 -190 {lab=GND}
N 60 -260 140 -260 {lab=GND}
N 60 -360 140 -360 {lab=GND}
N 60 -460 140 -460 {lab=GND}
N 60 -560 140 -560 {lab=GND}
N 320 -560 400 -560 {lab=GND}
N 400 -430 400 -290 {lab=vout}
N 490 -560 540 -560 {lab=#net1}
N 490 -560 490 -510 {lab=#net1}
N 440 -560 490 -560 {lab=#net1}
N 140 -530 140 -510 {lab=#net1}
N 180 -560 180 -510 {lab=#net1}
N 180 -510 490 -510 {lab=#net1}
N 140 -630 140 -590 {lab=Vdd}
N 400 -630 580 -630 {lab=Vdd}
N 580 -630 580 -590 {lab=Vdd}
N 400 -630 400 -590 {lab=Vdd}
N 580 -530 580 -490 {lab=#net4}
N 520 -490 580 -490 {lab=#net4}
N 520 -490 520 -380 {lab=#net4}
N 520 -380 540 -380 {lab=#net4}
N 580 -430 580 -410 {lab=vout}
N 400 -430 580 -430 {lab=vout}
N 400 -530 400 -430 {lab=vout}
N 580 -350 580 -260 {lab=#net5}
N 440 -260 580 -260 {lab=#net5}
N 270 -420 270 -400 {lab=Vdd}
N 320 -260 400 -260 {lab=Vdd}
N 180 -260 180 -210 {lab=GND}
N 140 -210 180 -210 {lab=GND}
N 140 -230 140 -210 {lab=GND}
N 140 -510 180 -510 {lab=#net1}
N 140 -630 400 -630 {lab=Vdd}
N 580 -430 660 -430 {lab=vout}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -560 0 1 {name=M1
l=\{inp_l\}
w=\{inp_w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -460 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -360 0 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -260 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 420 -560 0 1 {name=M5
l=\{inp_l\}
w=\{inp_w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 560 -560 0 0 {name=M7
l=\{inp_l\}
w=\{inp_w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 140 -190 0 0 {name=l1 lab=GND}
C {gnd.sym} 400 -190 0 0 {name=l2 lab=GND}
C {gnd.sym} 60 -260 1 0 {name=l4 lab=GND}
C {gnd.sym} 60 -360 1 0 {name=l5 lab=GND}
C {gnd.sym} 60 -460 1 0 {name=l6 lab=GND}
C {gnd.sym} 60 -560 1 0 {name=l7 lab=GND}
C {gnd.sym} 320 -560 1 0 {name=l8 lab=GND}
C {gnd.sym} 660 -560 3 0 {name=l10 lab=GND}
C {vsource.sym} 270 -370 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} 270 -340 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 270 -420 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 340 -630 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 320 -260 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/code_shown.sym} 460 -210 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 660 -430 0 1 {name=p4 sig_type=std_logic lab=vout}
C {lab_wire.sym} 660 -380 0 1 {name=p5 sig_type=std_logic lab=Vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 560 -380 0 0 {name=M9
l=\{out_l\}
w=\{out_w\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 420 -260 0 1 {name=M6
l=\{out_l\}
w=\{out_w\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {code_shown.sym} 1240 -1080 0 0 {name=varinpl only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.control
save vout
foreach varval 0.13u 0.2u 0.3u
 alterparam inp_l = $varval
 echo '=== varval = $varval'
 dc temp 0 125 1
 reset
 write ptat_nmos_only_varinpl.raw all.vout
end
.endc
"
spice_ignore=true}
C {code_shown.sym} 460 -1080 0 0 {name=novar only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 5u out_l = 0.5u
.control
save vout
echo '=== Start novar sim'

dc temp 0 125 1
let novar = vout

write ptat_nmos_only.raw novar
echo ''
echo '=== End novar sim'
.endc
"
}
C {code_shown.sym} 1240 -800 0 0 {name=varinpw only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.control
save vout
foreach varval 0.13u 0.3u 0.5u
 alterparam inp_w = $varval
 echo '=== varval = $varval'
 dc temp 0 125 1
 reset
 write ptat_nmos_only_varinpw.raw all.vout
end
.endc
"
spice_ignore=true}
C {launcher.sym} 520 -770 0 0 {name=h6 
descr="Netlist + Simulate"
tclcommand="xschem netlist; xschem simulate; xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw"
}
C {launcher.sym} 520 -740 0 0 {name=h7 
descr="Reload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {code_shown.sym} 1240 -520 0 0 {name=varoutl only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.control
save vout
foreach varval 0.13u 0.5u 1u 5u 10u
 alterparam out_l = $varval
 echo '=== varval = $varval'
 dc temp 0 125 1
 reset
 write ptat_nmos_only_varoutl.raw all.vout
end
.endc
"
spice_ignore=true}
C {code_shown.sym} 1240 -230 0 0 {name=varoutw only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.control
save vout
foreach varval 0.13u 1u 5u 10u
 alterparam out_w = $varval
 echo '=== varval = $varval'
 dc temp 0 125 1
 reset
 write ptat_nmos_only_varoutw.raw all.vout
end
.endc
"
spice_ignore=true}
