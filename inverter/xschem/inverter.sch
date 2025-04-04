v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 250 -190 250 -130 {lab=#net1}
N 290 -190 290 -160 {lab=Y}
N 200 -190 250 -190 {lab=#net1}
N 250 -250 250 -190 {lab=#net1}
N 290 -80 290 -60 {lab=VN}
N 290 -300 290 -280 {lab=VP}
N 290 -130 320 -130 {lab=VN}
N 320 -130 320 -80 {lab=VN}
N 290 -80 320 -80 {lab=VN}
N 290 -100 290 -80 {lab=VN}
N 290 -250 320 -250 {lab=VP}
N 320 -300 320 -250 {lab=VP}
N 290 -300 320 -300 {lab=VP}
N 290 -320 290 -300 {lab=VP}
N 290 -190 370 -190 {lab=Y}
N 290 -220 290 -190 {lab=Y}
C {title.sym} 160 30 0 0 {name=l1 author="D. Hunter"}
C {sg13g2_pr/sg13_lv_nmos.sym} 270 -130 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 270 -250 0 0 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 290 -320 3 0 {name=p1 lab=VP}
C {iopin.sym} 290 -60 1 0 {name=p2 lab=VN}
C {ipin.sym} 200 -190 0 0 {name=p5 lab=A}
C {opin.sym} 370 -190 0 0 {name=p6 lab=Y
}
