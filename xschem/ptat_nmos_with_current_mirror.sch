v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 430 -840 990 -540 {flags=graph
y1=0.95
y2=1.1
ypos1=0
ypos2=1
divy=5
subdivy=1
unity=1
x1=-0
x2=100
divx=5
subdivx=1
node=v(vout)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
hilight_wave=-1}
N 260 -240 260 -180 {lab=GND}
N 260 -180 300 -180 {lab=GND}
N 300 -180 300 -170 {lab=GND}
N 300 -210 300 -180 {lab=GND}
N 580 -240 580 -180 {lab=GND}
N 540 -180 580 -180 {lab=GND}
N 540 -180 540 -170 {lab=GND}
N 540 -210 540 -180 {lab=GND}
N 380 -390 500 -390 {lab=#net1}
N 540 -320 540 -270 {lab=vout}
N 300 -360 300 -270 {lab=#net2}
N 300 -460 300 -420 {lab=#net1}
N 300 -460 380 -460 {lab=#net1}
N 380 -460 380 -390 {lab=#net1}
N 340 -390 380 -390 {lab=#net1}
N 540 -480 540 -420 {lab=VDD}
N 540 -390 600 -390 {lab=GND}
N 240 -390 300 -390 {lab=GND}
N 300 -540 300 -520 {lab=GND}
N 540 -320 640 -320 {lab=vout}
N 540 -360 540 -320 {lab=vout}
C {devices/code_shown.sym} 0 -150 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerHBT.lib hbt_typ"}
C {devices/code_shown.sym} 110 -800 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
save all
 
op
write ptat_nmos_pnp.raw

dc temp 0 100 1
set appendwrite
write ptat_nmos_pnp.raw
.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/launcher.sym} 870 -500 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_pnp.raw dc"
}
C {sg13g2_pr/annotate_fet_params.sym} 680 -460 0 0 {name=annot1 ref=M2}
C {devices/launcher.sym} 870 -470 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {sg13g2_pr/pnpMPA.sym} 560 -240 0 1 {name=Q1
model=pnpMPA
spiceprefix=X
w=1.0e-6
l=2.0e-6
m=1
}
C {sg13g2_pr/pnpMPA.sym} 280 -240 0 0 {name=Q2
model=pnpMPA
spiceprefix=X
w=1.0e-6
l=2.0e-6
m=1
}
C {devices/gnd.sym} 300 -170 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 540 -170 0 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 -390 0 1 {name=M2
l=1u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 -390 0 0 {name=M3
l=1u
w=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {isource.sym} 300 -490 0 0 {name=I0 value=1m}
C {devices/gnd.sym} 300 -540 3 0 {name=l8 lab=GND}
C {devices/vsource.sym} 130 -330 0 0 {name=Vgs1 value=1.205}
C {devices/gnd.sym} 130 -300 0 0 {name=l9 lab=GND}
C {vdd.sym} 540 -480 0 0 {name=l10 lab=VDD}
C {vdd.sym} 130 -360 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 600 -390 3 0 {name=l1 lab=GND}
C {devices/gnd.sym} 240 -390 1 0 {name=l2 lab=GND}
C {sg13g2_pr/annotate_fet_params.sym} 680 -370 0 0 {name=annot2 ref=M3}
C {lab_wire.sym} 640 -320 0 0 {name=p1 sig_type=std_logic lab=vout}
