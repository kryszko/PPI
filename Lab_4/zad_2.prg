loop: POB n
      ODE raz
      SOM end
      ŁAD n
      POB A
 spr: ODE TAB
      SOM hop
      POB ilo
      DOD raz
      ŁAD ilo
 hop: POB spr
      DOD raz
      ŁAD spr
      SOB loop
 end: POB ilo
      STP      

Tab: RST 13
     RST 11
     RST 3
     RST 10
     RST 127
     RST 128
  A: RST  10
ilo: RST 0
raz: RST 1
  n: RST 6   