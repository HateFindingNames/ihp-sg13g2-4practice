v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 530 -830 1090 -530 {flags=graph
y1=-0.058
y2=-0.041
ypos1=0
ypos2=1
divy=5
subdivy=1
unity=1
x1=0
x2=100
divx=5
subdivx=1
node=vdiff
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
hilight_wave=-1
hcursor2_y=-0.054404897
hcursor1_y=-0.044513955}
T {Range Delta Vdiff(20C - 80C) about 9.89 mV -> alpha about 165 uV/K} 700 -190 0 0 0.4 0.4 {}
N 320 -120 320 -100 {lab=GND}
N 560 -120 560 -100 {lab=GND}
N 400 -320 520 -320 {lab=#net1}
N 320 -390 320 -350 {lab=#net1}
N 320 -390 400 -390 {lab=#net1}
N 400 -390 400 -320 {lab=#net1}
N 360 -320 400 -320 {lab=#net1}
N 560 -410 560 -350 {lab=VDD}
N 560 -320 620 -320 {lab=GND}
N 260 -320 320 -320 {lab=GND}
N 320 -470 320 -450 {lab=GND}
N 560 -230 560 -200 {lab=vl}
N 320 -230 320 -200 {lab=vh}
N 520 -170 560 -170 {lab=GND}
N 520 -170 520 -120 {lab=GND}
N 520 -120 560 -120 {lab=GND}
N 560 -140 560 -120 {lab=GND}
N 600 -230 600 -170 {lab=vl}
N 560 -230 600 -230 {lab=vl}
N 560 -290 560 -230 {lab=vl}
N 320 -170 360 -170 {lab=GND}
N 360 -170 360 -120 {lab=GND}
N 320 -120 360 -120 {lab=GND}
N 320 -140 320 -120 {lab=GND}
N 280 -230 280 -170 {lab=vh}
N 280 -230 320 -230 {lab=vh}
N 320 -290 320 -230 {lab=vh}
C {devices/code_shown.sym} 0 -810 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp 27
.control

save all
dc temp 0 100 1

let vdiff = vh - vl

wrdata ptat_bjt_nmos-curr-mirror.csv vdiff vh vl
write ptat_bjt_nmos-curr-mirror.raw

.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Copyright 2023 IHP PDK Authors"}
C {devices/launcher.sym} 870 -500 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/ptat_bjt_nmos-curr-mirror.raw dc"
}
C {devices/launcher.sym} 870 -470 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} 0 -930 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerHBT.lib hbt_typ
"
spice_ignore=false
      }
C {devices/gnd.sym} 320 -100 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 560 -100 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 340 -320 0 1 {name=M1
l=2u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 -320 0 0 {name=M2
l=2u
w=5u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {isource.sym} 320 -420 0 0 {name=I1 value=10u}
C {devices/gnd.sym} 320 -470 3 0 {name=l12 lab=GND}
C {devices/vsource.sym} 460 -480 0 0 {name=Vgs2 value=1.2}
C {devices/gnd.sym} 460 -450 0 0 {name=l13 lab=GND}
C {vdd.sym} 560 -410 0 0 {name=l14 lab=VDD}
C {vdd.sym} 460 -510 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} 620 -320 3 0 {name=l16 lab=GND}
C {devices/gnd.sym} 260 -320 1 0 {name=l17 lab=GND}
C {lab_pin.sym} 320 -250 2 0 {name=p2 sig_type=std_logic lab=vh}
C {lab_pin.sym} 560 -250 2 0 {name=p4 sig_type=std_logic lab=vl}
C {sg13g2_pr/npn13G2.sym} 300 -170 0 0 {name=Q1
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/npn13G2.sym} 580 -170 0 1 {name=Q2
model=npn13G2
spiceprefix=X
Nx=1
}
