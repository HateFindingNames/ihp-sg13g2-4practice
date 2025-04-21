v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 10 -400 570 -100 {flags=graph
y1=0.1
y2=0.12
ypos1=0
ypos2=1
divy=5
subdivy=1
unity=1
x1=-4.5383125e-07
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
}
T {https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9953136} 150 30 0 0 0.4 0.4 {}
N 760 -120 760 -80 {lab=GND}
N 760 -220 760 -180 {lab=#net1}
N 920 -220 920 -80 {lab=GND}
N 1100 -220 1100 -80 {lab=GND}
N 1260 -220 1260 -80 {lab=GND}
N 1260 -300 1260 -280 {lab=vh}
N 1100 -300 1100 -280 {lab=vl}
N 760 -320 760 -280 {lab=#net2}
N 860 -380 880 -380 {lab=#net2}
N 1160 -380 1220 -380 {lab=#net2}
N 760 -320 820 -320 {lab=#net2}
N 760 -350 760 -320 {lab=#net2}
N 820 -380 820 -320 {lab=#net2}
N 800 -380 820 -380 {lab=#net2}
N 860 -250 880 -250 {lab=#net3}
N 800 -250 860 -250 {lab=#net3}
N 860 -320 920 -320 {lab=#net3}
N 920 -320 920 -280 {lab=#net3}
N 1140 -300 1140 -250 {lab=vl}
N 1100 -300 1140 -300 {lab=vl}
N 1100 -350 1100 -300 {lab=vl}
N 1220 -300 1220 -250 {lab=vh}
N 1220 -300 1260 -300 {lab=vh}
N 1260 -350 1260 -300 {lab=vh}
N 1260 -440 1260 -410 {lab=vcc}
N 1100 -440 1260 -440 {lab=vcc}
N 760 -440 760 -410 {lab=vcc}
N 920 -440 920 -410 {lab=vcc}
N 760 -440 920 -440 {lab=vcc}
N 1100 -440 1100 -410 {lab=vcc}
N 1060 -440 1100 -440 {lab=vcc}
N 920 -350 920 -320 {lab=#net3}
N 860 -320 860 -250 {lab=#net3}
N 720 -440 760 -440 {lab=vcc}
N 1260 -300 1300 -300 {lab=vh}
N 1060 -300 1100 -300 {lab=vl}
N 720 -380 760 -380 {lab=vcc}
N 720 -440 720 -380 {lab=vcc}
N 700 -440 720 -440 {lab=vcc}
N 920 -380 960 -380 {lab=vcc}
N 960 -440 960 -380 {lab=vcc}
N 920 -440 960 -440 {lab=vcc}
N 1060 -380 1100 -380 {lab=vcc}
N 1060 -440 1060 -380 {lab=vcc}
N 960 -440 1060 -440 {lab=vcc}
N 1260 -380 1300 -380 {lab=vcc}
N 1300 -440 1300 -380 {lab=vcc}
N 1260 -440 1300 -440 {lab=vcc}
N 860 -380 860 -360 {lab=#net2}
N 820 -380 860 -380 {lab=#net2}
N 860 -360 1160 -360 {lab=#net2}
N 1160 -380 1160 -360 {lab=#net2}
N 1140 -380 1160 -380 {lab=#net2}
C {sg13g2_pr/sg13_lv_pmos.sym} 780 -380 0 1 {name=M1
l=2u
w=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 900 -380 0 0 {name=M2
l=2u
w=5u
ng=1
m=10
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1120 -380 0 1 {name=M3
l=2u
w=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1240 -380 0 0 {name=M4
l=2u
w=5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/npn13G2.sym} 780 -250 0 1 {name=Q1
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/npn13G2.sym} 900 -250 0 0 {name=Q2
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/npn13G2.sym} 1120 -250 0 1 {name=Q3
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/npn13G2.sym} 1240 -250 0 0 {name=Q4
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/rppd.sym} 760 -150 0 0 {name=R1
w=0.5e-6
l=0.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {gnd.sym} 760 -80 0 0 {name=l1 lab=GND}
C {gnd.sym} 920 -80 0 0 {name=l2 lab=GND}
C {gnd.sym} 1100 -80 0 0 {name=l3 lab=GND}
C {gnd.sym} 1260 -80 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1300 -300 2 0 {name=p1 sig_type=std_logic lab=vh}
C {lab_pin.sym} 1060 -300 0 0 {name=p2 sig_type=std_logic lab=vl}
C {vsource.sym} 650 -240 0 0 {name=V1 value=1.5 savecurrent=false}
C {gnd.sym} 650 -210 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 700 -440 0 0 {name=p3 sig_type=std_logic lab=vcc}
C {lab_pin.sym} 650 -270 1 0 {name=p4 sig_type=std_logic lab=vcc}
C {devices/code_shown.sym} 0 -670 0 0 {name=NGSPICE only_toplevel=true 
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
C {devices/launcher.sym} 70 -80 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/ptat_bjt_nmos-curr-mirror.raw dc"
}
C {devices/launcher.sym} 70 -50 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} 0 -800 0 0 {
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
