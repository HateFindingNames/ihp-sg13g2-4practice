v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 620 -330 1110 -70 {flags=graph
y1=-1.2
y2=0.12
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-3
x2=-0.15490196
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="out16
out22"
color="4 5"
dataset=-1
unitx=1
logx=1
logy=0
legend=1}
B 2 620 -860 1110 -600 {flags=graph
y1=-0.006
y2=0.69
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.001
x2=0.7
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=indiff
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 620 -590 1110 -330 {flags=graph
y1=0.11
y2=0.12
ypos1=0
ypos2=2
divy=5
subdivy=2
unity=1
x1=-3
x2=-0.15490196
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=out22
color=5
dataset=-1
unitx=1
logx=1
logy=0
}
T {0o} 1140 -130 0 0 0.4 0.4 {}
N 520 -520 520 -390 {lab=#net1}
N 300 -520 520 -520 {lab=#net1}
N 300 -520 300 -510 {lab=#net1}
N 300 -410 300 -390 {lab=#net2}
N 390 -460 390 -390 {lab=out22}
N 360 -460 390 -460 {lab=out22}
N 210 -440 240 -440 {lab=inn}
N 520 -270 520 -140 {lab=#net3}
N 300 -270 520 -270 {lab=#net3}
N 300 -270 300 -260 {lab=#net3}
N 300 -160 300 -140 {lab=#net4}
N 390 -210 390 -140 {lab=out16}
N 360 -210 390 -210 {lab=out16}
N 210 -190 240 -190 {lab=inn}
N 210 -480 240 -480 {lab=inp}
N 150 -360 150 -330 {lab=inn}
N 90 -360 90 -330 {lab=inp}
N 210 -230 240 -230 {lab=inp}
C {gnd.sym} 90 -270 0 0 {name=l2 lab=GND}
C {gnd.sym} 150 -270 0 0 {name=l3 lab=GND}
C {gnd.sym} 520 -330 0 0 {name=l4 lab=GND}
C {vsource.sym} 150 -300 0 0 {name=V2 value=10m savecurrent=false}
C {vsource.sym} 90 -300 0 0 {name=V1 value=10m savecurrent=false}
C {code.sym} 60 -160 0 0 {
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
C {devices/code_shown.sym} 130 -850 0 0 {name=spicy only_toplevel=true 
value="
.param rload=1.5k
.control

set tbname="diff_amp_8-22_tb"
save out16 out22 inp inn indiff

dc V1 1m 700m 0.10m
let indiff = inp - inn
write diff_amp_compare_tb.raw indiff out16 out22

.endc
"}
C {vsource.sym} 520 -360 0 0 {name=V3 value=1.263 savecurrent=false}
C {lab_pin.sym} 390 -460 0 1 {name=p7 sig_type=std_logic lab=out22}
C {gnd.sym} 390 -330 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 210 -480 0 0 {name=p1 sig_type=std_logic lab=inp}
C {lab_pin.sym} 210 -440 2 1 {name=p2 sig_type=std_logic lab=inn
}
C {gnd.sym} 300 -330 0 0 {name=l6 lab=GND}
C {practicing/TempSensor/design_data/xschem/diff_amp_8-22.sym} 290 -460 0 0 {name=x1}
C {res.sym} 390 -360 0 0 {name=R2
value=\{rload\}
footprint=1206
device=resistor
m=1}
C {launcher.sym} 200 -600 0 0 {name=h6 
descr="Netlist + Simulate"
tclcommand="xschem netlist; xschem simulate"
}
C {vsource.sym} 300 -360 2 0 {name=V4 value=1.263 savecurrent=false}
C {practicing/TempSensor/design_data/xschem/diff_amp_8-16.sym} 160 -180 0 0 {name=x2}
C {gnd.sym} 520 -80 0 0 {name=l8 lab=GND}
C {vsource.sym} 520 -110 0 0 {name=V5 value=1.263 savecurrent=false}
C {lab_pin.sym} 390 -210 0 1 {name=p3 sig_type=std_logic lab=out16}
C {gnd.sym} 390 -80 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 210 -230 0 0 {name=p4 sig_type=std_logic lab=inp}
C {lab_pin.sym} 210 -190 2 1 {name=p5 sig_type=std_logic lab=inn
}
C {gnd.sym} 300 -80 0 0 {name=l10 lab=GND}
C {res.sym} 390 -110 0 0 {name=R1
value=\{rload\}
footprint=1206
device=resistor
m=1}
C {vsource.sym} 300 -110 2 0 {name=V6 value=1.263 savecurrent=false}
C {lab_pin.sym} 150 -360 3 1 {name=p6 sig_type=std_logic lab=inn
}
C {lab_pin.sym} 90 -360 1 0 {name=p8 sig_type=std_logic lab=inp}
C {launcher.sym} 200 -570 0 0 {name=h7 
descr="Reload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
