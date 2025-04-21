v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 490 -870 1290 -470 {flags=graph
y1=0.59
y2=1.6
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
node="vref
vr3"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hcursor1_y=0.63892641}
T {Vr3 = (k*T/q) * ln((Aq2*Iq2)/(Aq1*Iq1)) * R3/R2
--> n Emitters Q2 = 10x Emitters Q1 --> ln(10)} 550 -320 0 0 0.4 0.4 {}
N 210 -80 210 -60 {lab=GND}
N 390 -260 390 -60 {lab=GND}
N 210 -200 210 -140 {lab=#net1}
N 70 -140 70 -60 {lab=GND}
N 70 -200 110 -200 {lab=GND}
N 110 -200 110 -140 {lab=GND}
N 70 -140 110 -140 {lab=GND}
N 70 -170 70 -140 {lab=GND}
N 210 -260 250 -260 {lab=#net1}
N 250 -260 250 -200 {lab=#net1}
N 210 -200 250 -200 {lab=#net1}
N 210 -230 210 -200 {lab=#net1}
N 390 -320 430 -320 {lab=GND}
N 430 -320 430 -260 {lab=GND}
N 390 -260 430 -260 {lab=GND}
N 390 -290 390 -260 {lab=GND}
N 30 -260 30 -200 {lab=#net2}
N 70 -260 170 -260 {lab=#net2}
N 70 -350 70 -260 {lab=#net2}
N 30 -260 70 -260 {lab=#net2}
N 70 -260 70 -230 {lab=#net2}
N 210 -320 210 -290 {lab=Vr3}
N 390 -440 390 -350 {lab=Vref}
N 210 -440 390 -440 {lab=Vref}
N 70 -440 70 -410 {lab=Vref}
N 210 -440 210 -420 {lab=Vref}
N 70 -440 210 -440 {lab=Vref}
N 210 -320 350 -320 {lab=Vr3}
N 210 -360 210 -320 {lab=Vr3}
N 210 -460 210 -440 {lab=Vref}
N 170 -520 210 -520 {lab=GND}
C {sg13g2_pr/npn13G2.sym} 50 -200 0 0 {name=Q1
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/npn13G2.sym} 190 -260 0 0 {name=Q2
model=npn13G2
spiceprefix=X
Nx=10
}
C {sg13g2_pr/npn13G2.sym} 370 -320 0 0 {name=Q3
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/rhigh.sym} 70 -380 0 0 {name=R1
w=0.5e-6
l=9e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 210 -390 0 0 {name=R3
w=0.5e-6
l=9e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 210 -110 0 0 {name=R2
w=0.5e-6
l=0.7e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {gnd.sym} 70 -60 0 0 {name=l1 lab=GND}
C {gnd.sym} 210 -60 0 0 {name=l2 lab=GND}
C {gnd.sym} 390 -60 0 0 {name=l3 lab=GND}
C {isource.sym} 210 -490 0 0 {name=I0 value=150u}
C {gnd.sym} 170 -520 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 390 -440 2 0 {name=p1 sig_type=std_logic lab=Vref}
C {devices/code_shown.sym} 0 -800 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp 27
.control

set tbname="bandgap_vref"

save all
dc temp 0 100 1
let vr3 = vref - vr3
write \{$tbname\}.raw vref vr3

.endc
"}
C {code_shown.sym} 0 -960 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
"
spice_ignore=false
      }
C {devices/launcher.sym} 550 -450 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/bandgap_vref.raw dc"
}
C {lab_pin.sym} 210 -330 2 0 {name=p2 sig_type=std_logic lab=Vr3}
