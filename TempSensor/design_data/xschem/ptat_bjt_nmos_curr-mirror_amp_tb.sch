v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 530 -790 1030 -520 {flags=graph
y1=0.06
y2=0.27
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
node="\\"8-22; vout\\""
hcursor1_y=0.10699033
hcursor2_y=0.20843651}
B 2 20 -790 520 -520 {flags=graph
y1=0.041
y2=0.063
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
node=indiff
rainbow=1
legend=1
hcursor1_y=0.044390876
hcursor2_y=0.054444101}
N 260 -70 260 -50 {lab=GND}
N 500 -70 500 -50 {lab=GND}
N 340 -270 460 -270 {lab=#net1}
N 260 -340 260 -300 {lab=#net1}
N 260 -340 340 -340 {lab=#net1}
N 340 -340 340 -270 {lab=#net1}
N 300 -270 340 -270 {lab=#net1}
N 500 -360 500 -300 {lab=VDD}
N 500 -270 560 -270 {lab=GND}
N 200 -270 260 -270 {lab=GND}
N 260 -420 260 -400 {lab=GND}
N 500 -180 500 -150 {lab=vh}
N 260 -180 260 -150 {lab=vl}
N 460 -120 500 -120 {lab=GND}
N 460 -120 460 -70 {lab=GND}
N 460 -70 500 -70 {lab=GND}
N 500 -90 500 -70 {lab=GND}
N 540 -180 540 -120 {lab=vh}
N 500 -180 540 -180 {lab=vh}
N 500 -240 500 -180 {lab=vh}
N 260 -120 300 -120 {lab=GND}
N 300 -120 300 -70 {lab=GND}
N 260 -70 300 -70 {lab=GND}
N 260 -90 260 -70 {lab=GND}
N 220 -180 220 -120 {lab=vl}
N 220 -180 260 -180 {lab=vl}
N 260 -240 260 -180 {lab=vl}
N 690 -320 730 -320 {lab=vl}
N 690 -360 730 -360 {lab=vh}
N 790 -390 970 -390 {lab=#net2}
N 850 -340 870 -340 {lab=vout}
N 870 -340 870 -290 {lab=vout}
C {gnd.sym} 790 -230 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 870 -340 0 1 {name=p4 sig_type=std_logic lab=vout}
C {code.sym} 10 -390 0 0 {name=spicy only_toplevel=false value="
.control

save all
dc temp 0 125 1
let indiff = vh - vl

write ptat_bjt_nmos_curr-mirror_amp_tb.raw vout indiff
.endc
"
}
C {code.sym} 10 -230 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerCAP.lib cap_typ
.lib cornerRES.lib res_typ
.lib cornerHBT.lib hbt_typ
"
spice_ignore=false
      }
C {devices/gnd.sym} 260 -50 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 500 -50 0 0 {name=l4 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 280 -270 0 1 {name=M1
l=2u
w=5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 480 -270 0 0 {name=M2
l=2u
w=5u
ng=1
m=10
model=sg13_lv_nmos
spiceprefix=X
}
C {isource.sym} 260 -370 0 0 {name=I1 value=10u}
C {devices/gnd.sym} 260 -420 3 0 {name=l12 lab=GND}
C {devices/vsource.sym} 370 -140 0 0 {name=Vgs2 value=1.2}
C {devices/gnd.sym} 370 -110 0 0 {name=l13 lab=GND}
C {vdd.sym} 500 -360 0 0 {name=l14 lab=VDD}
C {vdd.sym} 370 -170 0 0 {name=l15 lab=VDD}
C {devices/gnd.sym} 560 -270 3 0 {name=l16 lab=GND}
C {devices/gnd.sym} 200 -270 1 0 {name=l17 lab=GND}
C {lab_pin.sym} 500 -200 2 0 {name=p2 sig_type=std_logic lab=vh}
C {lab_pin.sym} 260 -200 2 0 {name=p1 sig_type=std_logic lab=vl}
C {sg13g2_pr/npn13G2.sym} 240 -120 0 0 {name=Q1
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/npn13G2.sym} 520 -120 0 1 {name=Q2
model=npn13G2
spiceprefix=X
Nx=1
}
C {lab_pin.sym} 690 -320 0 0 {name=p3 sig_type=std_logic lab=vl}
C {lab_pin.sym} 690 -360 0 0 {name=p5 sig_type=std_logic lab=vh}
C {vsource.sym} 970 -360 0 0 {name=V1 value=1.265 savecurrent=false}
C {vsource.sym} 790 -260 2 0 {name=V2 value=1.265 savecurrent=false}
C {gnd.sym} 970 -330 0 0 {name=l1 lab=GND}
C {launcher.sym} 690 -160 0 0 {name=h6 
descr="Netlist + Simulate"
tclcommand="xschem netlist; xschem simulate; xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw"
}
C {launcher.sym} 690 -130 0 0 {name=h7 
descr="Reload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {practicing/TempSensor/design_data/xschem/diff_amp_8-22.sym} 780 -340 0 0 {name=x1}
C {gnd.sym} 870 -230 0 0 {name=l9 lab=GND}
C {res.sym} 870 -260 0 0 {name=R1
value=1.5k
footprint=1206
device=resistor
m=1}
