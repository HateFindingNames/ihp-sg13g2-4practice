v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -240 180 -190 {lab=#net1}
N 340 -220 340 -190 {lab=#net2}
N 180 -130 180 -40 {lab=GND}
N 180 -20 180 80 {lab=GND}
N 340 -80 340 -20 {lab=GND}
N 180 -20 340 -20 {lab=GND}
N 180 -40 180 -20 {lab=GND}
N 120 -160 140 -160 {lab=GND}
N 120 -160 120 -40 {lab=GND}
N 120 -40 180 -40 {lab=GND}
N 300 -160 300 -80 {lab=GND}
N 300 -80 340 -80 {lab=GND}
N 340 -130 340 -80 {lab=GND}
N 40 -340 40 -320 {lab=Vin}
N 180 -340 180 -320 {lab=Vin}
N 340 -340 340 -320 {lab=Vin}
N 340 -220 540 -220 {lab=#net2}
N 340 -260 340 -220 {lab=#net2}
N 180 -240 540 -240 {lab=#net1}
N 180 -260 180 -240 {lab=#net1}
C {sg13g2_pr/npn13G2.sym} 160 -160 0 0 {name=Q1
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/npn13G2.sym} 320 -160 0 0 {name=Q2
model=npn13G2
spiceprefix=X
Nx=1
}
C {sg13g2_pr/rsil.sym} 180 -290 0 0 {name=R1
w=0.5e-6
l=0.5e-6
model=rsil
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rsil.sym} 340 -290 0 0 {name=R2
w=0.5e-6
l=5e-6
model=rsil
spiceprefix=X
b=0
m=1
}
C {devices/gnd.sym} 180 80 0 0 {name=l1 lab=GND}
C {vsource.sym} 40 -290 0 0 {name=V1 value=3 savecurrent=false}
C {gnd.sym} 40 -260 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 40 -340 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 180 -340 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 340 -340 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 540 -240 0 0 {name=p4 sig_type=std_logic lab=out1}
C {lab_wire.sym} 540 -220 0 0 {name=p5 sig_type=std_logic lab=out2}
