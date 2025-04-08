v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 400 -710 1200 -310 {flags=graph
y1=-6.1
y2=-1.8
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
x2=6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=1
rawfile=$netlist_dir/nmos_channel_wl.raw
autoload=0
sim_type=dc
color="9 4 7"
node="i(vmeas)
i(vmeas1)
i(vmeas2)"}
N 170 -180 170 -140 {lab=GND}
N 150 -140 170 -140 {lab=GND}
N 330 -180 330 -140 {lab=GND}
N 310 -140 330 -140 {lab=GND}
N 470 -180 490 -180 {lab=GND}
N 490 -180 490 -140 {lab=GND}
N 470 -140 490 -140 {lab=GND}
N 150 -140 150 -130 {lab=GND}
N 150 -150 150 -140 {lab=GND}
N 310 -140 310 -130 {lab=GND}
N 310 -150 310 -140 {lab=GND}
N 470 -140 470 -130 {lab=GND}
N 470 -150 470 -140 {lab=GND}
N 20 -280 20 -120 {lab=#net1}
N 310 -280 470 -280 {lab=#net1}
N 470 -280 470 -270 {lab=#net1}
N 310 -280 310 -270 {lab=#net1}
N 150 -280 310 -280 {lab=#net1}
N 150 -280 150 -270 {lab=#net1}
N 20 -280 150 -280 {lab=#net1}
N 80 -180 80 -120 {lab=vgs}
N 310 -180 330 -180 {lab=GND}
N 110 -190 110 -180 {lab=vgs}
N 80 -180 110 -180 {lab=vgs}
N 110 -190 270 -190 {lab=vgs}
N 270 -190 270 -180 {lab=vgs}
N 270 -190 430 -190 {lab=vgs}
N 430 -190 430 -180 {lab=vgs}
N 150 -180 170 -180 {lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 130 -180 0 0 {name=M1
l=1u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 80 -90 0 0 {name=Vgs value=6 savecurrent=false}
C {gnd.sym} 150 -130 0 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 290 -180 0 0 {name=M2
l=1u
w=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 450 -180 0 0 {name=M3
l=10u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 310 -130 0 0 {name=l2 lab=GND}
C {gnd.sym} 470 -130 0 0 {name=l3 lab=GND}
C {vsource.sym} 20 -90 0 0 {name=Vds value=5 savecurrent=false}
C {gnd.sym} 20 -60 0 0 {name=l4 lab=GND}
C {gnd.sym} 80 -60 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 0 -500 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp 27
.param cwidth=1u
.control

save i(vmeas) i(vmeas1) i(vmeas2) cwidth
dc vgs 0 6 0.001

write nmos_channel_wl.raw

.endc
"}
C {code_shown.sym} 0 -620 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
"
spice_ignore=false
      }
C {launcher.sym} 760 -290 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/nmos_channel_wl.raw dc"
}
C {ammeter.sym} 150 -240 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 310 -240 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 470 -240 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 80 -180 0 0 {name=p1 sig_type=std_logic lab=vgs}
