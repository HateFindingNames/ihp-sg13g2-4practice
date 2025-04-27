v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 0 -1060 400 -830 {flags=graph
y1=0.64
y2=0.8
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-12.5
x2=112.5
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
node="\\"Output;vout\\""
rainbow=1
legend=1
rawfile=$netlist_dir/ptat_nmos_only.raw}
B 2 820 -1070 1220 -840 {flags=graph
y1=0.3
y2=0.89
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-12.5
x2=112.5
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
node="\\"inp_l var;unknown1.varinpl_out\\""
rawfile=$netlist_dir/ptat_nmos_only.raw}
B 2 820 -800 1220 -570 {flags=graph
y1=0.71
y2=0.99
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-12.5
x2=112.5
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
node=vout
rainbow=1
legend=1
rawfile=$netlist_dir/ptat_nmos_only_varinpw.raw}
B 2 820 -530 1220 -300 {flags=graph
y1=0.79
y2=0.98
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-12.5
x2=112.5
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
node=vout
rainbow=1
legend=1
rawfile=$netlist_dir/ptat_nmos_only_varoutl.raw}
B 2 820 -260 1220 -30 {flags=graph
y1=0.78
y2=0.99
ypos1=0
ypos2=2
divy=10
subdivy=1
unity=1
x1=-12.5
x2=112.5
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
node=vout
rainbow=1
legend=1
rawfile=$netlist_dir/ptat_nmos_only_varoutw.raw}
N 100 -390 100 -370 {lab=#net1}
N 100 -290 100 -270 {lab=#net2}
N 100 -190 100 -170 {lab=#net3}
N 140 -340 140 -290 {lab=#net2}
N 100 -290 140 -290 {lab=#net2}
N 100 -310 100 -290 {lab=#net2}
N 140 -240 140 -190 {lab=#net3}
N 100 -190 140 -190 {lab=#net3}
N 100 -210 100 -190 {lab=#net3}
N 540 -440 620 -440 {lab=GND}
N 540 -260 620 -260 {lab=Vdd}
N 100 -90 100 -70 {lab=GND}
N 360 -110 360 -70 {lab=GND}
N 20 -140 100 -140 {lab=GND}
N 20 -240 100 -240 {lab=GND}
N 20 -340 100 -340 {lab=GND}
N 20 -440 100 -440 {lab=GND}
N 280 -440 360 -440 {lab=GND}
N 360 -310 360 -170 {lab=vout}
N 450 -440 500 -440 {lab=#net1}
N 450 -440 450 -390 {lab=#net1}
N 400 -440 450 -440 {lab=#net1}
N 100 -410 100 -390 {lab=#net1}
N 140 -440 140 -390 {lab=#net1}
N 140 -390 450 -390 {lab=#net1}
N 100 -510 100 -470 {lab=Vdd}
N 360 -510 540 -510 {lab=Vdd}
N 540 -510 540 -470 {lab=Vdd}
N 360 -510 360 -470 {lab=Vdd}
N 540 -410 540 -370 {lab=#net4}
N 480 -370 540 -370 {lab=#net4}
N 480 -370 480 -260 {lab=#net4}
N 480 -260 500 -260 {lab=#net4}
N 540 -310 540 -290 {lab=vout}
N 360 -310 540 -310 {lab=vout}
N 360 -410 360 -310 {lab=vout}
N 540 -230 540 -140 {lab=#net5}
N 400 -140 540 -140 {lab=#net5}
N 230 -300 230 -280 {lab=Vdd}
N 280 -140 360 -140 {lab=Vdd}
N 140 -140 140 -90 {lab=GND}
N 100 -90 140 -90 {lab=GND}
N 100 -110 100 -90 {lab=GND}
N 100 -390 140 -390 {lab=#net1}
N 100 -510 360 -510 {lab=Vdd}
N 540 -310 620 -310 {lab=vout}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -440 0 1 {name=M1
l=\{inp_l\}
w=\{inp_w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -340 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -240 0 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -140 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 380 -440 0 1 {name=M5
l=\{inp_l\}
w=\{inp_w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 520 -440 0 0 {name=M7
l=\{inp_l\}
w=\{inp_w\}
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 100 -70 0 0 {name=l1 lab=GND}
C {gnd.sym} 360 -70 0 0 {name=l2 lab=GND}
C {gnd.sym} 20 -140 1 0 {name=l4 lab=GND}
C {gnd.sym} 20 -240 1 0 {name=l5 lab=GND}
C {gnd.sym} 20 -340 1 0 {name=l6 lab=GND}
C {gnd.sym} 20 -440 1 0 {name=l7 lab=GND}
C {gnd.sym} 280 -440 1 0 {name=l8 lab=GND}
C {gnd.sym} 620 -440 3 0 {name=l10 lab=GND}
C {vsource.sym} 230 -250 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} 230 -220 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 230 -300 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 300 -510 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 280 -140 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/launcher.sym} 60 -810 0 0 {name=h5
descr="load novar" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_only_novar.raw dc"
}
C {devices/code_shown.sym} 420 -90 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {lab_wire.sym} 620 -310 0 1 {name=p4 sig_type=std_logic lab=vout}
C {lab_wire.sym} 620 -260 0 1 {name=p5 sig_type=std_logic lab=Vdd}
C {sg13g2_pr/sg13_lv_pmos.sym} 520 -260 0 0 {name=M9
l=\{out_l\}
w=\{out_w\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 380 -140 0 1 {name=M6
l=\{out_l\}
w=\{out_w\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {code.sym} 700 -1050 0 0 {name=varinpl only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.dc temp 0 125 1
.control

save all
reset

setplot new                  ; 'new' creates a new plot of some name
set myplot = $curplot        ; the new plot is stored in 'curplot'
let out = vector(2)

foreach varval 0.15u 0.3u 1u 2u
 alterparam inp_l = $varval
 echo '=== varval = $varval'
 reset
 run
 let \{$myplot\}.varinpl_out = vout

 write ptat_nmos_only.raw
 set appendwrite
end
unset appendwrite
.endc
"
}
C {code_shown.sym} 0 -750 0 0 {name=novar only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 5u out_l = 0.13u
.control
*destroy all

save all
reset
dc temp 0 125 1

echo '=== End of novar sim'

*wrdata ptat_nmos_only_novar.csv vout
write ptat_nmos_only.raw
*plot all.vout
.endc
"
spice_ignore=true}
C {code.sym} 700 -780 0 0 {name=varinpw only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.dc temp 0 125 1
.control

save all
reset

setplot new                  ; 'new' creates a new plot of some name
set myplot = $curplot        ; the new plot is stored in 'curplot'
let out = vector(2)

foreach varval 0.15u 0.3u 1u 2u
 alterparam inp_w = $varval
 echo '=== varval = $varval'
 reset
 run
 let \{$myplot\}.varinpw_out = vout

 write ptat_nmos_only.raw
 set appendwrite
end
unset appendwrite
.endc
"
}
C {code.sym} 700 -240 0 0 {name=varoutw only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.dc temp 0 125 1
.control

save all
reset

setplot new                  ; 'new' creates a new plot of some name
set myplot = $curplot        ; the new plot is stored in 'curplot'
let out = vector(2)

foreach varval 0.15u 0.3u 1u 2u
 alterparam out_w = $varval
 echo '=== varval = $varval'
 reset
 run
 let \{$myplot\}.varoutw_out = vout

 write ptat_nmos_only.raw
 set appendwrite
end
unset appendwrite
.endc
"
}
C {code.sym} 700 -510 0 0 {name=varoutl only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.dc temp 0 125 1
.control

save all
reset

setplot new                  ; 'new' creates a new plot of some name
set myplot = $curplot        ; the new plot is stored in 'curplot'
let out = vector(2)

foreach varval 0.15u 0.3u 1u 2u
 alterparam out_l = $varval
 echo '=== varval = $varval'
 reset
 run
 let \{$myplot\}.varoutl_out = vout

 write ptat_nmos_only.raw
 set appendwrite
end
unset appendwrite
.endc
"
}
C {devices/launcher.sym} 880 -820 0 0 {name=h1
descr="load varinpl" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_only_varinpl.raw dc"
}
C {devices/launcher.sym} 880 -550 0 0 {name=h2
descr="load varinpw" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_only_varinpw.raw dc"
}
C {devices/launcher.sym} 880 -280 0 0 {name=h3
descr="load varoutl" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_only_varoutl.raw dc"
}
C {devices/launcher.sym} 880 -10 0 0 {name=h4
descr="load varoutw" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_only_varoutw.raw dc"
}
C {launcher.sym} 450 -550 0 0 {name=h6 
descr="Netlist + Simulate
Ctrl-Left-Click" 
tclcommand="xschem netlist; xschem simulate"
}
C {launcher.sym} 450 -590 0 0 {name=h7 
descr="Reload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {code.sym} 580 -1050 0 0 {name=varinpl1 only_toplevel=false value="
.param inp_w = 0.15u inp_l = 0.13u
.param out_w = 0.15u out_l = 0.13u
.control

save all
setplot varinpl                   ;Setting new plot name
set myplot = $curplot             ;We create a new plot to store our vectors
*set varinplplot = $curplot       ;We 'store' our plot in a variable for further use

let index = 0

foreach varval 0.15u 0.3u 0.6u 1.2u
 set index = $&index
 alterparam inp_l = $varval
 echo '=== varval = $varval'
 reset
 dc temp 0 125 1
 set aux = $curplot               ;Each analysis will create its own plot
                                  ;We need to remember every analysis each time to retrieve our data
 set curplot = $varinplplot       ;Now we set the plot we want to store data into
                                  ;In our case the plot created previously
 let \{$aux\}.vout = vout
 let index = index + 1
 write ptat_nmos_only_varinpl.raw \{$aux\}.vout
 set appendwrite
end
unset appendwrite

*wrdata ptat_nmos_only_varinpl.csv all.vout
*write ptat_nmos_only_varinpl.raw
echo '=== Saving varinpl'
set curplot = $varinplplot
settype voltage vout
*write ptat_nmos_only_varinpl.raw
*plot all.vout
.endc
"
spice_ignore=true}
