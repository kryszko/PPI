          POB n
          ŁAD i
          POB zero
          ŁAD suma
              
petla:    POB i
          ODE jeden 
          ŁAD i
          SOM koniec
          DNS     
          SDP kwadrat
          PZS
          DOD suma                             
          ŁAD SUMA
          SOB petla
koniec:   POB suma
          STP
        
kwadrat:  PZS
          ŁAD licznik
          POB zero
          ŁAD suma_kw
          PZS
          ŁAD liczba
kw_petla: SOZ kw_koniec
          ŁAD j
          POB suma_kw
          DOD liczba
          ŁAD suma_kw
          POB j
          ODE jeden
          SOB kw_petla
kw_koniec: POB suma_kw
           DNS
           POB licznik
           DNS
           PWR              
                
zero: RST 0
jeden: RST 1
suma: RST 0
liczba: RPA
n: RST 4
i: RPA
j: RPA
suma_kw: RPA
licznik: RPA