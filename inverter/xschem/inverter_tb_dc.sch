v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 847.5 -90 880 -90 {lab=Vout}
N 660 -90 690 -90 {lab=Vin}
N 755 -150 755 -142.5 {lab=Vdd}
N 755 -150 760 -150 {lab=Vdd}
N 760 -170 760 -150 {lab=Vdd}
C {/foss/designs/practicing/inverter/xschem/inverter.sym} 790 -90 0 0 {name=x1}
C {vsource.sym} 860 -190 0 0 {name=Vdd value=1.8 savecurrent=false}
C {vsource.sym} 950 -190 0 0 {name=Vin value=0 savecurrent=false}
C {gnd.sym} 860 -160 0 0 {name=l1 lab=GND}
C {gnd.sym} 950 -160 0 0 {name=l2 lab=GND}
C {gnd.sym} 755 -37.5 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 660 -90 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 950 -220 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 760 -170 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} 860 -220 1 0 {name=p5 sig_type=std_logic lab=Vdd}
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
.include /foss/designs/simulations/inverter.pex.spice
.param temp=27
.control
save all 
dc Vin 0 1.8 0.1
plot v(Vin) v(Vout)
.endc
"}
