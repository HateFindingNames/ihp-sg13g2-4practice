v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 360 -560 840 -290 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 660 -90 690 -90 {lab=Vin}
N 830 -90 880 -90 {lab=Vout}
C {practicing/inverter/xschem/inverter.sym} 750 -90 0 0 {name=x1}
C {vsource.sym} 850 -190 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} 940 -190 0 0 {name=Vin value=0 savecurrent=false}
C {gnd.sym} 850 -160 0 0 {name=l1 lab=GND}
C {gnd.sym} 940 -160 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 660 -90 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 940 -220 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 750 -140 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 850 -220 1 0 {name=p5 sig_type=std_logic lab=Vdd}
C {title.sym} 160 30 0 0 {name=l4 author="D. Hunter"}
C {opin.sym} 880 -90 0 0 {name=p2 lab=Vout}
C {code_shown.sym} 0 -290 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
"
spice_ignore=false
      }
C {devices/code_shown.sym} 0 -160 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
dc Vin 0 1.8 0.1
write inverter_tb_dc.raw
plot v(Vin) v(Vout)
.endc
"}
C {launcher.sym} 430 -260 0 0 {name=h6 
descr="Netlist + Simulate"
tclcommand="xschem netlist; xschem simulate; xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw"
}
C {launcher.sym} 430 -230 0 0 {name=h7 
descr="Reload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {gnd.sym} 750 -40 0 0 {name=l3 lab=GND}
