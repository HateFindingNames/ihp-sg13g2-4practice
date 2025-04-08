<Qucs Schematic 24.4.0>
<Properties>
  <View=270,235,1011,689,2.89005,0,0>
  <Grid=10,10,1>
  <DataSet=RC low pass filter.dat>
  <DataDisplay=RC low pass filter.dpl>
  <OpenDisplay=0>
  <Script=RC low pass filter.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 340 520 0 0 0 0>
  <C C1 1 630 350 17 -26 0 1 "1 nF" 1 "" 0 "neutral" 0>
  <Vac Vin 1 340 420 18 -26 0 1 "1 V" 1 "1 kHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <R R1 1 470 300 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.AC AC1 1 780 290 0 37 0 0 "log" 1 "10 kHz" 1 "10 GHz" 1 "301" 1 "no" 0>
  <Eqn Eqn1 1 810 440 -34 16 0 0 "VoutdB=dB(Vout.v)" 1 "Voutph=phase(Vout.v)" 1 "i_mag_dB=dB(Vin.i)" 1 "i_phase=phase(Vin.i)" 1 "yes" 0>
</Components>
<Wires>
  <340 300 340 390 "" 0 0 0 "">
  <340 300 440 300 "Vin" 400 270 32 "">
  <630 300 630 320 "" 0 0 0 "">
  <630 380 630 490 "" 0 0 0 "">
  <340 490 630 490 "" 0 0 0 "">
  <340 450 340 490 "" 0 0 0 "">
  <340 490 340 520 "" 0 0 0 "">
  <500 300 630 300 "Vout" 580 270 45 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
