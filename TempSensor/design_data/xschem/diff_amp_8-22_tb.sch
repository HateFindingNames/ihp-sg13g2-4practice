v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 460 -700 1260 -300 {flags=graph
y1=0.3
y2=0.31
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
B 2 1280 -700 2080 -300 {flags=graph
y1=3.6
y2=50
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
N 1000 -240 1000 -110 {lab=#net1}
N 780 -240 1000 -240 {lab=#net1}
N 780 -240 780 -230 {lab=#net1}
N 780 -130 780 -110 {lab=#net2}
N 870 -180 870 -110 {lab=out}
N 840 -180 870 -180 {lab=out}
N 690 -160 690 -110 {lab=inn}
N 690 -160 720 -160 {lab=inn}
N 630 -200 630 -110 {lab=inp}
N 630 -200 720 -200 {lab=inp}
C {gnd.sym} 630 -50 0 0 {name=l2 lab=GND}
C {gnd.sym} 690 -50 0 0 {name=l3 lab=GND}
C {gnd.sym} 1000 -50 0 0 {name=l4 lab=GND}
C {vsource.sym} 690 -80 0 0 {name=V2 value=1m savecurrent=false}
C {vsource.sym} 630 -80 0 0 {name=V1 value=10m savecurrent=false}
C {code_shown.sym} 0 -570 0 0 {
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
C {devices/code_shown.sym} 0 -440 0 0 {name=NGSPICE only_toplevel=true 
value="
.control

set tbname="diff_amp_8-22_tb"
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
C {vsource.sym} 1000 -80 0 0 {name=V3 value=1.263 savecurrent=false}
C {lab_pin.sym} 870 -180 0 1 {name=p7 sig_type=std_logic lab=out}
C {sg13g2_pr/rhigh.sym} 870 -80 0 0 {name=R1
w=0.5e-6
l=5e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {gnd.sym} 870 -50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 630 -150 0 0 {name=p1 sig_type=std_logic lab=inp}
C {lab_pin.sym} 690 -140 2 0 {name=p2 sig_type=std_logic lab=inn
}
C {launcher.sym} 520 -280 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/diff_amp_8-22_tb.raw dc"
}
C {gnd.sym} 780 -50 0 0 {name=l6 lab=GND}
C {vsource.sym} 780 -80 0 0 {name=V4 value=-1.263 savecurrent=false}
C {practicing/TempSensor/design_data/xschem/diff_amp_8-22.sym} 770 -180 0 0 {name=x1}
