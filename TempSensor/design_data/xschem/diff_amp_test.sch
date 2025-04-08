v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 320 -950 1120 -550 {flags=graph
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
N 370 -330 370 -310 {lab=#net1}
N 490 -380 570 -380 {lab=#net1}
N 370 -330 490 -330 {lab=#net1}
N 370 -350 370 -330 {lab=#net1}
N 490 -380 490 -330 {lab=#net1}
N 370 -450 370 -410 {lab=#net2}
N 450 -450 610 -450 {lab=#net2}
N 610 -450 610 -410 {lab=#net2}
N 300 -380 370 -380 {lab=#net2}
N 300 -450 300 -380 {lab=#net2}
N 300 -450 370 -450 {lab=#net2}
N 610 -380 680 -380 {lab=#net2}
N 680 -450 680 -380 {lab=#net2}
N 610 -450 680 -450 {lab=#net2}
N 550 -280 610 -280 {lab=GND}
N 610 -330 610 -310 {lab=out}
N 370 -250 370 -210 {lab=#net3}
N 490 -210 610 -210 {lab=#net3}
N 610 -250 610 -210 {lab=#net3}
N 490 -210 490 -170 {lab=#net3}
N 490 -140 530 -140 {lab=GND}
N 490 -90 490 -70 {lab=GND}
N 530 -140 530 -90 {lab=GND}
N 490 -90 530 -90 {lab=GND}
N 490 -110 490 -90 {lab=GND}
N 610 -330 690 -330 {lab=out}
N 610 -350 610 -330 {lab=out}
N 550 -280 550 -70 {lab=GND}
N 370 -280 550 -280 {lab=GND}
N 490 -70 550 -70 {lab=GND}
N 200 -280 330 -280 {lab=#net4}
N 410 -380 490 -380 {lab=#net1}
N 650 -280 690 -280 {lab=#net5}
N 370 -210 490 -210 {lab=#net3}
N 200 -450 300 -450 {lab=#net2}
N 690 -280 690 -190 {lab=#net5}
N 200 -280 200 -190 {lab=#net4}
N 450 -450 450 -140 {lab=#net2}
N 370 -450 450 -450 {lab=#net2}
C {devices/code_shown.sym} 0 -620 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
save all
dc V2 100m 150m 10u
write diff_amp_test.raw
.endc
"}
C {devices/launcher.sym} 380 -530 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/diff_amp_test.raw dc"
}
C {devices/launcher.sym} 380 -500 0 0 {name=h1
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
C {sg13g2_pr/sg13_lv_nmos.sym} 390 -380 0 1 {name=M2
l=1u
w=7.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 630 -280 0 1 {name=M1
l=10u
w=0.35u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 590 -380 0 0 {name=M3
l=1u
w=7.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 -280 0 0 {name=M4
l=10u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 470 -140 0 0 {name=M5
l=1u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 200 -160 0 0 {name=V1 value=100m savecurrent=false}
C {vsource.sym} 690 -160 0 0 {name=V2 value=2 savecurrent=false}
C {gnd.sym} 690 -130 0 0 {name=l2 lab=GND}
C {gnd.sym} 200 -130 0 0 {name=l3 lab=GND}
C {gnd.sym} 520 -70 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 690 -330 2 0 {name=p4 sig_type=std_logic lab=out}
C {vsource.sym} 200 -420 0 0 {name=V3 value=2 savecurrent=false}
C {gnd.sym} 200 -390 0 0 {name=l4 lab=GND}
