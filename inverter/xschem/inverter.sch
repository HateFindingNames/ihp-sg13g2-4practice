v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 370 -280 370 -220 {lab=in}
N 410 -280 410 -250 {lab=out}
N 320 -280 370 -280 {lab=in}
N 370 -340 370 -280 {lab=in}
N 410 -170 410 -150 {lab=VN}
N 410 -390 410 -370 {lab=vdd}
N 410 -220 440 -220 {lab=VN}
N 440 -220 440 -170 {lab=VN}
N 410 -170 440 -170 {lab=VN}
N 410 -190 410 -170 {lab=VN}
N 410 -340 440 -340 {lab=vdd}
N 440 -390 440 -340 {lab=vdd}
N 410 -390 440 -390 {lab=vdd}
N 410 -410 410 -390 {lab=vdd}
N 410 -280 490 -280 {lab=out}
N 410 -310 410 -280 {lab=out}
C {title.sym} 160 30 0 0 {name=l1 author="D. Hunter"}
C {sg13g2_pr/sg13_lv_nmos.sym} 390 -220 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 390 -340 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 410 -410 3 0 {name=p1 lab=vdd}
C {iopin.sym} 410 -150 1 0 {name=p2 lab=vss}
C {ipin.sym} 320 -280 0 0 {name=p5 lab=in}
C {opin.sym} 490 -280 0 0 {name=p6 lab=out
}
