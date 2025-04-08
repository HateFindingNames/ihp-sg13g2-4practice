v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 690 -640 1490 -240 {flags=graph
y1=.2
y2=.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=100
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="v(vout)"
color=""
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=-1}
N 80 -120 80 -100 {lab=#net1}
N 80 -20 80 -0 {lab=#net2}
N 80 80 80 100 {lab=#net3}
N 120 -70 120 -20 {lab=#net2}
N 80 -20 120 -20 {lab=#net2}
N 80 -40 80 -20 {lab=#net2}
N 120 30 120 80 {lab=#net3}
N 80 80 120 80 {lab=#net3}
N 80 60 80 80 {lab=#net3}
N 520 -170 600 -170 {lab=GND}
N 520 10 600 10 {lab=Vdd}
N 80 180 80 200 {lab=GND}
N 340 160 340 200 {lab=GND}
N -0 130 80 130 {lab=GND}
N -0 30 80 30 {lab=GND}
N -0 -70 80 -70 {lab=GND}
N -0 -170 80 -170 {lab=GND}
N 260 -170 340 -170 {lab=GND}
N 340 -40 340 100 {lab=Vout}
N 430 -170 480 -170 {lab=#net1}
N 430 -170 430 -120 {lab=#net1}
N 380 -170 430 -170 {lab=#net1}
N 80 -140 80 -120 {lab=#net1}
N 120 -170 120 -120 {lab=#net1}
N 120 -120 430 -120 {lab=#net1}
N 80 -240 80 -200 {lab=Vdd}
N 340 -240 520 -240 {lab=Vdd}
N 520 -240 520 -200 {lab=Vdd}
N 340 -240 340 -200 {lab=Vdd}
N 80 -240 340 -240 {lab=Vdd}
N 520 -140 520 -100 {lab=#net4}
N 460 -100 520 -100 {lab=#net4}
N 460 -100 460 10 {lab=#net4}
N 460 10 480 10 {lab=#net4}
N 520 -40 520 -20 {lab=Vout}
N 340 -40 520 -40 {lab=Vout}
N 340 -140 340 -40 {lab=Vout}
N 520 40 520 130 {lab=#net5}
N 380 130 520 130 {lab=#net5}
N 210 -30 210 -10 {lab=Vdd}
N 260 130 340 130 {lab=Vdd}
N 120 130 120 180 {lab=GND}
N 80 180 120 180 {lab=GND}
N 80 160 80 180 {lab=GND}
N 80 -120 120 -120 {lab=#net1}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 -170 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 -70 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 30 0 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 130 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 360 -170 0 1 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 360 130 0 1 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 -170 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 10 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 80 200 0 0 {name=l1 lab=GND}
C {gnd.sym} 340 200 0 0 {name=l2 lab=GND}
C {gnd.sym} 0 130 1 0 {name=l4 lab=GND}
C {gnd.sym} 0 30 1 0 {name=l5 lab=GND}
C {gnd.sym} 0 -70 1 0 {name=l6 lab=GND}
C {gnd.sym} 0 -170 1 0 {name=l7 lab=GND}
C {gnd.sym} 260 -170 1 0 {name=l8 lab=GND}
C {gnd.sym} 600 -170 3 0 {name=l10 lab=GND}
C {vsource.sym} 210 20 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} 210 50 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 210 -30 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 280 -240 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 260 130 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/code_shown.sym} 20 -610 0 0 {name=NGSPICE only_toplevel=true 
value="
.include ptat_nmos_only.save
.temp 27
.control
save all
 
op
write ptat_nmos_only.raw

dc temp 0 100 1
set appendwrite
write ptat_nmos_only.raw
.endc
"}
C {devices/launcher.sym} 750 -200 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_only.raw dc"
}
C {devices/launcher.sym} 750 -170 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/code_shown.sym} 20 -330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 520 -40 0 0 {name=p4 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 600 10 0 1 {name=p5 sig_type=std_logic lab=Vdd}
