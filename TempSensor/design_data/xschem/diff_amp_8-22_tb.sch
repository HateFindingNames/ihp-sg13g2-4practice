v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 380 -600 870 -340 {flags=graph
y1=0.11
y2=0.12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.002
x2=0.7
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
B 2 380 -860 870 -600 {flags=graph
y1=-0.008
y2=0.69
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.002
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
N 450 -250 450 -120 {lab=#net1}
N 230 -250 450 -250 {lab=#net1}
N 230 -250 230 -240 {lab=#net1}
N 230 -140 230 -120 {lab=#net2}
N 320 -190 320 -120 {lab=out}
N 290 -190 320 -190 {lab=out}
N 140 -170 140 -120 {lab=inn}
N 140 -170 170 -170 {lab=inn}
N 80 -210 80 -120 {lab=inp}
N 80 -210 170 -210 {lab=inp}
C {gnd.sym} 80 -60 0 0 {name=l2 lab=GND}
C {gnd.sym} 140 -60 0 0 {name=l3 lab=GND}
C {gnd.sym} 450 -60 0 0 {name=l4 lab=GND}
C {vsource.sym} 140 -90 0 0 {name=V2 value=10m savecurrent=false}
C {vsource.sym} 80 -90 0 0 {name=V1 value=10m savecurrent=false}
C {code.sym} 530 -150 0 0 {
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
C {devices/code_shown.sym} 0 -620 0 0 {name=spicy only_toplevel=true 
value="
.param rload=1.5k
.control

set tbname="diff_amp_8-22_tb"
save out inp inn indiff

dc V1 2m 700m 0.1m
let indiff = inp - inn
write \{$tbname\}.raw indiff out

.endc
"}
C {vsource.sym} 450 -90 0 0 {name=V3 value=1.263 savecurrent=false}
C {lab_pin.sym} 320 -190 0 1 {name=p7 sig_type=std_logic lab=out}
C {gnd.sym} 320 -60 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 80 -160 0 0 {name=p1 sig_type=std_logic lab=inp}
C {lab_pin.sym} 140 -150 2 0 {name=p2 sig_type=std_logic lab=inn
}
C {gnd.sym} 230 -60 0 0 {name=l6 lab=GND}
C {practicing/TempSensor/design_data/xschem/diff_amp_8-22.sym} 220 -190 0 0 {name=x1}
C {res.sym} 320 -90 0 0 {name=R2
value=\{rload\}
footprint=1206
device=resistor
m=1}
C {launcher.sym} 440 -310 0 0 {name=h6 
descr="Netlist + Simulate"
tclcommand="xschem netlist; xschem simulate; xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw"
}
C {vsource.sym} 230 -90 2 0 {name=V4 value=1.263 savecurrent=false}
