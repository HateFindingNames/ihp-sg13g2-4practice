v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 460 -720 1260 -320 {flags=graph
y1=-1.3
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0071519894
x2=0.015554018
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=out
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1280 -720 2080 -320 {flags=graph
y1=-50000
y2=2.1e+15
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.0071519894
x2=0.015554018
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=gain
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 840 -180 860 -180 {lab=#net1}
N 840 -220 1000 -220 {lab=#net2}
N 1000 -220 1000 -180 {lab=#net2}
N 410 -220 410 -130 {lab=inn}
N 410 -220 540 -220 {lab=inn}
N 500 -200 500 -130 {lab=inp}
N 500 -200 540 -200 {lab=inp}
N 920 -200 920 -120 {lab=out}
N 840 -200 920 -200 {lab=out}
N 860 -180 860 -140 {lab=#net1}
C {gnd.sym} 500 -70 0 0 {name=l2 lab=GND}
C {gnd.sym} 410 -70 0 0 {name=l3 lab=GND}
C {gnd.sym} 1000 -120 0 0 {name=l4 lab=GND}
C {vsource.sym} 410 -100 0 0 {name=V1 value=10.1m savecurrent=false}
C {vsource.sym} 500 -100 0 0 {name=V2 value=10m savecurrent=false}
C {code_shown.sym} 0 -590 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
"
spice_ignore=false
      }
C {devices/code_shown.sym} 0 -460 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp 27
.control

set tbname="diff_amp_tb"
save all
dc V2 1m 200m 0.01m

let indiff = inp - inn
let gain = out / indiff

wrdata \{$tbname\}.csv gain out inp inn
write \{$tbname\}.raw

.endc
"}
C {vsource.sym} 1000 -150 0 0 {name=V3 value=1.263 savecurrent=false}
C {practicing/TempSensor/design_data/xschem/diff_amp.sym} 500 -210 0 0 {name=x1}
C {lab_pin.sym} 840 -200 0 0 {name=p7 sig_type=std_logic lab=out}
C {sg13g2_pr/rhigh.sym} 920 -90 0 0 {name=R1
w=0.5e-6
l=5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {gnd.sym} 920 -60 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 540 -200 2 0 {name=p1 sig_type=std_logic lab=inp}
C {lab_pin.sym} 540 -220 2 0 {name=p2 sig_type=std_logic lab=inn
}
C {launcher.sym} 520 -300 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/diff_amp_tb.raw dc"
}
C {gnd.sym} 860 -80 0 0 {name=l6 lab=GND}
C {vsource.sym} 860 -110 0 0 {name=V4 value=-1.263 savecurrent=false}
