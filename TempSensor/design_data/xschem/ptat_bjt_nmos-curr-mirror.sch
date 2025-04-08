v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 590 -830 1150 -530 {flags=graph
y1=0.1
y2=0.12
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
hcursor1_y=0.11683577
hcursor2_y=0.1027535}
N 260 -170 260 -110 {lab=GND}
N 260 -110 300 -110 {lab=GND}
N 300 -110 300 -100 {lab=GND}
N 300 -140 300 -110 {lab=GND}
N 580 -170 580 -110 {lab=GND}
N 540 -110 580 -110 {lab=GND}
N 540 -110 540 -100 {lab=GND}
N 540 -140 540 -110 {lab=GND}
N 380 -320 500 -320 {lab=#net1}
N 540 -250 540 -200 {lab=vh}
N 300 -250 300 -200 {lab=vl}
N 300 -390 300 -350 {lab=#net1}
N 300 -390 380 -390 {lab=#net1}
N 380 -390 380 -320 {lab=#net1}
N 340 -320 380 -320 {lab=#net1}
N 540 -320 600 -320 {lab=GND}
N 240 -320 300 -320 {lab=GND}
N 300 -470 300 -450 {lab=GND}
N 540 -250 640 -250 {lab=vh}
N 540 -290 540 -250 {lab=vh}
N 300 -250 380 -250 {lab=vl}
N 300 -290 300 -250 {lab=vl}
N 540 -390 540 -350 {lab=VDD}
C {devices/code_shown.sym} 80 -810 0 0 {name=NGSPICE only_toplevel=true 
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
C {sg13g2_pr/pnpMPA.sym} 560 -170 0 1 {name=Q1
model=pnpMPA
spiceprefix=X
w=1u
l=2u
m=1
}
C {sg13g2_pr/pnpMPA.sym} 280 -170 0 0 {name=Q2
model=pnpMPA
spiceprefix=X
w=1u
l=2u
m=1
}
C {devices/gnd.sym} 300 -100 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 540 -100 0 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 -320 0 1 {name=M2
l=1u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {isource.sym} 300 -420 0 0 {name=I0 value=20u}
C {devices/gnd.sym} 300 -470 3 0 {name=l8 lab=GND}
C {devices/vsource.sym} 440 -480 0 0 {name=Vgs1 value=1.2}
C {devices/gnd.sym} 440 -450 0 0 {name=l9 lab=GND}
C {vdd.sym} 440 -510 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 600 -320 3 0 {name=l1 lab=GND}
C {devices/gnd.sym} 240 -320 1 0 {name=l2 lab=GND}
C {code_shown.sym} 80 -940 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.include ptat_bjt_nmos-curr-mirror.save
"
spice_ignore=false
      }
C {lab_pin.sym} 380 -250 2 0 {name=p3 sig_type=std_logic lab=vl}
C {lab_pin.sym} 640 -250 2 0 {name=p4 sig_type=std_logic lab=vh}
C {vdd.sym} 540 -390 0 0 {name=l3 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 -320 0 0 {name=M1
l=1u
w=10u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
