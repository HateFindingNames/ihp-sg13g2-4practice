v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 140 -100 140 -80 {lab=#net1}
N 180 -150 340 -150 {lab=#net1}
N 140 -100 180 -100 {lab=#net1}
N 140 -120 140 -100 {lab=#net1}
N 180 -150 180 -100 {lab=#net1}
N 140 -220 140 -180 {lab=vdd}
N 140 -220 380 -220 {lab=vdd}
N 380 -220 380 -180 {lab=vdd}
N 70 -150 140 -150 {lab=vdd}
N 70 -220 70 -150 {lab=vdd}
N 70 -220 140 -220 {lab=vdd}
N 380 -150 450 -150 {lab=vdd}
N 450 -220 450 -150 {lab=vdd}
N 380 -220 450 -220 {lab=vdd}
N 320 -50 380 -50 {lab=gnd}
N 380 -100 380 -80 {lab=out}
N 140 -20 140 20 {lab=#net2}
N 260 20 380 20 {lab=#net2}
N 380 -20 380 20 {lab=#net2}
N 260 20 260 60 {lab=#net2}
N 140 20 260 20 {lab=#net2}
N 260 90 300 90 {lab=gnd}
N 260 140 260 160 {lab=gnd}
N 300 90 300 140 {lab=gnd}
N 260 140 300 140 {lab=gnd}
N 260 120 260 140 {lab=gnd}
N 420 -50 460 -50 {lab=v-}
N 380 -100 460 -100 {lab=out}
N 380 -120 380 -100 {lab=out}
N 60 -50 100 -50 {lab=v+}
N 320 -50 320 160 {lab=gnd}
N 140 -50 320 -50 {lab=gnd}
N 260 160 320 160 {lab=gnd}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -150 0 1 {name=M2
l=1u
w=7.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 -50 0 1 {name=M1
l=10u
w=0.35u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 360 -150 0 0 {name=M3
l=1u
w=7.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -50 0 0 {name=M4
l=10u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 90 0 0 {name=M5
l=1u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 60 -50 0 0 {name=p1 lab=v+}
C {opin.sym} 460 -100 0 0 {name=p2 lab=out}
C {ipin.sym} 460 -50 2 0 {name=p3 lab=v-}
C {ipin.sym} 220 90 0 0 {name=p9 lab=tail}
C {iopin.sym} 260 160 2 0 {name=p10 lab=gnd}
C {iopin.sym} 260 -220 3 0 {name=p11 lab=vdd}
C {code_shown.sym} -20 -360 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt
"
spice_ignore=false
      }
