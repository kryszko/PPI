      POB st0		//przywrócenie ustawień frabrycznych
      ŁAD i
      ŁAD ilo
      POB kop
      ŁAD spr


loop: POB i		//głowny program
      DOD st1
      ŁAD i
      ODE n
      SOZ end
      POB A
 spr: ODE TAB
      SOM hop
      POB ilo
      DOD st1
      ŁAD ilo
 hop: POB spr
      DOD st1
      ŁAD spr
      SOB loop
 end: POB ilo
      STP      
  
  A: RST  10		// zmienne i backup
ilo: RST 0
st0: RST 0
st1: RST 1
  n: RST 6
  i: RST 0
kop: ODE TAB   

Tab: RST 13		//tablica 
     RST 11
     RST 3
     RST 10
     RST 127
     RST 128