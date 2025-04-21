v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1020 -490 1820 -90 {flags=graph
y1=1.8
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.1
x2=0.15
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out"
color=""
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=-1}
N 500 -330 500 -310 {lab=#net1}
N 620 -380 700 -380 {lab=#net1}
N 500 -330 620 -330 {lab=#net1}
N 500 -350 500 -330 {lab=#net1}
N 620 -380 620 -330 {lab=#net1}
N 500 -450 500 -410 {lab=#net2}
N 580 -450 740 -450 {lab=#net2}
N 740 -450 740 -410 {lab=#net2}
N 430 -380 500 -380 {lab=#net2}
N 430 -450 430 -380 {lab=#net2}
N 430 -450 500 -450 {lab=#net2}
N 740 -380 810 -380 {lab=#net2}
N 810 -450 810 -380 {lab=#net2}
N 740 -450 810 -450 {lab=#net2}
N 680 -280 740 -280 {lab=GND}
N 740 -330 740 -310 {lab=out}
N 500 -250 500 -210 {lab=#net3}
N 620 -210 740 -210 {lab=#net3}
N 740 -250 740 -210 {lab=#net3}
N 620 -210 620 -170 {lab=#net3}
N 620 -140 660 -140 {lab=GND}
N 620 -90 620 -70 {lab=GND}
N 660 -140 660 -90 {lab=GND}
N 620 -90 660 -90 {lab=GND}
N 620 -110 620 -90 {lab=GND}
N 740 -330 820 -330 {lab=out}
N 740 -350 740 -330 {lab=out}
N 680 -280 680 -70 {lab=GND}
N 500 -280 680 -280 {lab=GND}
N 620 -70 680 -70 {lab=GND}
N 330 -280 460 -280 {lab=#net4}
N 540 -380 620 -380 {lab=#net1}
N 780 -280 820 -280 {lab=#net5}
N 500 -210 620 -210 {lab=#net3}
N 330 -450 430 -450 {lab=#net2}
N 820 -280 820 -190 {lab=#net5}
N 330 -280 330 -190 {lab=#net4}
N 580 -450 580 -140 {lab=#net2}
N 500 -450 580 -450 {lab=#net2}
C {devices/code_shown.sym} 0 -620 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
save all
dc V2 100m 150m 10u
write diff_amp_test.raw
.endc
"}
C {devices/launcher.sym} 1110 -70 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/diff_amp_test.raw dc"
}
C {devices/launcher.sym} 1110 -40 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {code_shown.sym} 0 -720 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
"
spice_ignore=false
      }
C {sg13g2_pr/sg13_lv_nmos.sym} 520 -380 0 1 {name=M2
l=1u
w=7.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 760 -280 0 1 {name=M1
l=10u
w=0.35u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 720 -380 0 0 {name=M3
l=1u
w=7.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 480 -280 0 0 {name=M4
l=10u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 600 -140 0 0 {name=M5
l=1u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 330 -160 0 0 {name=V1 value=100m savecurrent=false}
C {vsource.sym} 820 -160 0 0 {name=V2 value=2 savecurrent=false}
C {gnd.sym} 820 -130 0 0 {name=l2 lab=GND}
C {gnd.sym} 330 -130 0 0 {name=l3 lab=GND}
C {gnd.sym} 650 -70 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 820 -330 2 0 {name=p4 sig_type=std_logic lab=out}
C {vsource.sym} 330 -420 0 0 {name=V3 value=2 savecurrent=false}
C {gnd.sym} 330 -390 0 0 {name=l4 lab=GND}
