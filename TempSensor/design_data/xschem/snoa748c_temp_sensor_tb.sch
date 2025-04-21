v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 10 -370 570 -70 {flags=graph
y1=-110
y2=-4.3
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
hcursor1_y=0.1042873
hcursor2_y=0.087169316}
N 680 -380 760 -380 {lab=#net1}
N 680 -380 680 -360 {lab=#net1}
N 660 -380 680 -380 {lab=#net1}
N 640 -380 640 -330 {lab=#net1}
N 800 -320 800 -250 {lab=#net2}
N 680 -280 680 -160 {lab=GND}
N 800 -190 800 -160 {lab=GND}
N 800 -430 800 -410 {lab=vl}
N 720 -500 800 -500 {lab=vh}
N 600 -460 660 -460 {lab=GND}
N 660 -400 660 -380 {lab=#net1}
N 640 -380 660 -380 {lab=#net1}
N 800 -430 940 -430 {lab=vl}
N 800 -440 800 -430 {lab=vl}
N 680 -330 720 -330 {lab=GND}
N 720 -330 720 -280 {lab=GND}
N 680 -280 720 -280 {lab=GND}
N 680 -300 680 -280 {lab=GND}
N 800 -380 840 -380 {lab=#net2}
N 840 -380 840 -320 {lab=#net2}
N 800 -320 840 -320 {lab=#net2}
N 800 -350 800 -320 {lab=#net2}
C {sg13g2_pr/npn13G2.sym} 660 -330 0 0 {name=Q1
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/npn13G2.sym} 780 -380 0 0 {name=Q2
model=npn13G2
spiceprefix=X
Nx=1
}
C {devices/gnd.sym} 680 -160 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 800 -160 0 0 {name=l2 lab=GND}
C {isource.sym} 660 -430 0 0 {name=I0 value=50u}
C {vsource.sym} 720 -470 0 0 {name=V1 value=1.2 savecurrent=false}
C {devices/gnd.sym} 720 -440 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 600 -460 0 0 {name=l4 lab=GND}
C {sg13g2_pr/rppd.sym} 800 -220 0 0 {name=R1
w=0.5e-6
l=0.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rppd.sym} 800 -470 0 0 {name=R2
w=0.5e-6
l=0.5e-6
model=rppd
spiceprefix=X
b=0
m=1
}
C {lab_pin.sym} 940 -430 2 0 {name=p1 sig_type=std_logic lab=vl}
C {lab_pin.sym} 780 -500 1 0 {name=p2 sig_type=std_logic lab=vh}
C {devices/code_shown.sym} 0 -620 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp 27
.control

save all
dc temp 0 100 1

let vdiff = vl - vh

wrdata ptat_bjt_nmos-curr-mirror.csv vdiff vh vl
write ptat_bjt_nmos-curr-mirror.raw

.endc
"}
C {devices/launcher.sym} 80 -50 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/ptat_bjt_nmos-curr-mirror.raw dc"
}
C {devices/launcher.sym} 80 -20 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} 0 -730 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerRES.lib res_typ
.lib cornerHBT.lib hbt_typ
"
spice_ignore=false
      }
