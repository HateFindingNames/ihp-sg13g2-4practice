v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 0 -910 800 -510 {flags=graph
y1=0.24
y2=0.41
ypos1=0
ypos2=2
divy=10
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
rawfile=$netlist_dir/ptat_nmos_only_varinpw_amp.raw
color=4
node=vout
rainbow=1
legend=1
}
N 120 -360 120 -340 {lab=#net1}
N 120 -260 120 -240 {lab=#net2}
N 120 -160 120 -140 {lab=#net3}
N 160 -310 160 -260 {lab=#net2}
N 120 -260 160 -260 {lab=#net2}
N 120 -280 120 -260 {lab=#net2}
N 160 -210 160 -160 {lab=#net3}
N 120 -160 160 -160 {lab=#net3}
N 120 -180 120 -160 {lab=#net3}
N 560 -410 640 -410 {lab=GND}
N 560 -230 640 -230 {lab=Vdd}
N 120 -60 120 -40 {lab=GND}
N 380 -80 380 -40 {lab=GND}
N 40 -110 120 -110 {lab=GND}
N 40 -210 120 -210 {lab=GND}
N 40 -310 120 -310 {lab=GND}
N 40 -410 120 -410 {lab=GND}
N 300 -410 380 -410 {lab=GND}
N 380 -280 380 -140 {lab=#net4}
N 470 -410 520 -410 {lab=#net1}
N 470 -410 470 -360 {lab=#net1}
N 420 -410 470 -410 {lab=#net1}
N 120 -380 120 -360 {lab=#net1}
N 160 -410 160 -360 {lab=#net1}
N 160 -360 470 -360 {lab=#net1}
N 120 -480 120 -440 {lab=Vdd}
N 380 -480 560 -480 {lab=Vdd}
N 560 -480 560 -440 {lab=Vdd}
N 380 -480 380 -440 {lab=Vdd}
N 120 -480 380 -480 {lab=Vdd}
N 560 -380 560 -340 {lab=#net5}
N 500 -340 560 -340 {lab=#net5}
N 500 -340 500 -230 {lab=#net5}
N 500 -230 520 -230 {lab=#net5}
N 560 -280 560 -260 {lab=#net4}
N 380 -280 560 -280 {lab=#net4}
N 380 -380 380 -280 {lab=#net4}
N 560 -200 560 -110 {lab=#net6}
N 420 -110 560 -110 {lab=#net6}
N 250 -270 250 -250 {lab=Vdd}
N 300 -110 380 -110 {lab=Vdd}
N 160 -110 160 -60 {lab=GND}
N 120 -60 160 -60 {lab=GND}
N 120 -80 120 -60 {lab=GND}
N 120 -360 160 -360 {lab=#net1}
N 560 -280 760 -280 {lab=#net4}
N 740 -240 740 -210 {lab=GND}
N 740 -240 760 -240 {lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 -410 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 -310 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 -210 0 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 140 -110 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 -410 0 1 {name=M5
l=\{input_l\}
w=\{input_w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 540 -410 0 0 {name=M7
l=\{input_l\}
w=\{input_w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 120 -40 0 0 {name=l1 lab=GND}
C {gnd.sym} 380 -40 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 -110 1 0 {name=l4 lab=GND}
C {gnd.sym} 40 -210 1 0 {name=l5 lab=GND}
C {gnd.sym} 40 -310 1 0 {name=l6 lab=GND}
C {gnd.sym} 40 -410 1 0 {name=l7 lab=GND}
C {gnd.sym} 300 -410 1 0 {name=l8 lab=GND}
C {gnd.sym} 640 -410 3 0 {name=l10 lab=GND}
C {vsource.sym} 250 -220 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} 250 -190 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 250 -270 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 320 -480 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 300 -110 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 640 -230 0 1 {name=p5 sig_type=std_logic lab=Vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 540 -230 0 0 {name=M9
l=\{output_l\}
w=\{output_w\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 400 -110 0 1 {name=M6
l=\{output_l\}
w=\{output_w\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {gnd.sym} 740 -210 0 0 {name=l9 lab=GND}
C {gnd.sym} 820 -210 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 820 -310 0 0 {name=p6 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 880 -260 0 1 {name=p4 sig_type=std_logic lab=vout}
C {devices/launcher.sym} 180 -940 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_only_varinpw_amp.raw all"
}
C {code.sym} -10 -1030 0 0 {name=var_input_w only_toplevel=false value="
.param input_w = 0.1u input_l = 0.33u
.param output_w = 0.15u output_l = 0.33u
.control
*shell rm DELETE_ME_ptat_nmos_only.csv ptat_nmos_only.raw
unlet all.vout
save all

set wr_singlescale            ; for wrdata: write the scale only once
set wr_vecnames               ; for wrdata: write the vector names

foreach wval 0.1u 0.5u 1u 2u 5u
 alterparam input_w = $wval
 echo '=== wval = $wval'
 echo '=== curplot = $curplot'
 reset
 dc temp 0 125 1
end

*wrdata DELETE_ME_ptat_nmos_only.csv all.vout
write $inputdir/ptat_nmos_only_varinpw_amp.raw all.vout
*plot all.vout
.endc
"
}
C {code_shown.sym} 580 -110 0 0 {
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
C {practicing/TempSensor/design_data/xschem/diff_amp_8-16.sym} 680 -230 0 0 {name=x2}
