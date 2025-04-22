v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 460 -720 1260 -320 {flags=graph
y1=0.025
y2=1.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.002
x2=0.2
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
y1=14
y2=49
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0.002
x2=0.2
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node=dbgain
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 1000 -260 1000 -130 {lab=#net1}
N 780 -260 1000 -260 {lab=#net1}
N 780 -260 780 -250 {lab=#net1}
N 780 -150 780 -130 {lab=#net2}
N 870 -200 870 -130 {lab=out}
N 840 -200 870 -200 {lab=out}
N 690 -180 690 -130 {lab=inn}
N 690 -180 720 -180 {lab=inn}
N 630 -220 630 -130 {lab=inp}
N 630 -220 720 -220 {lab=inp}
C {gnd.sym} 630 -70 0 0 {name=l2 lab=GND}
C {gnd.sym} 690 -70 0 0 {name=l3 lab=GND}
C {gnd.sym} 1000 -70 0 0 {name=l4 lab=GND}
C {vsource.sym} 690 -100 0 0 {name=V2 value=1m savecurrent=false}
C {vsource.sym} 630 -100 0 0 {name=V1 value=10m savecurrent=false}
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
.control

set tbname="diff_amp_8-16_tb"
save dbgain gain out inp inn

dc V1 2m 200m 0.1m

let indiff = inp - inn
*if $out < 0
* let $out == 1e-12
*end
let gain = out / indiff
let dbgain = db(gain)

wrdata \{$tbname\}.csv gain out inp inn
write \{$tbname\}.raw

.endc
"}
C {vsource.sym} 1000 -100 0 0 {name=V3 value=1.263 savecurrent=false}
C {practicing/TempSensor/design_data/xschem/diff_amp_8-16.sym} 640 -170 0 0 {name=x1}
C {lab_pin.sym} 870 -200 0 1 {name=p7 sig_type=std_logic lab=out}
C {sg13g2_pr/rhigh.sym} 870 -100 0 0 {name=R1
w=0.5e-6
l=5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {gnd.sym} 870 -70 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 630 -170 0 0 {name=p1 sig_type=std_logic lab=inp}
C {lab_pin.sym} 690 -160 2 0 {name=p2 sig_type=std_logic lab=inn
}
C {launcher.sym} 520 -300 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/diff_amp_8-16_tb.raw dc"
}
C {gnd.sym} 780 -70 0 0 {name=l6 lab=GND}
C {vsource.sym} 780 -100 0 0 {name=V4 value=-1.263 savecurrent=false}
