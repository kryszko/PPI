        POB zero
        ŁAD i
        
petla:  POB i
        ODE jeden
        SOM koniec    
        ŁAD i
        DNS
        SDP kwadrat
        PZS
        DOD suma
        ŁAD SUMA
        SOB petla
koniec: POB suma
        STP
        
kwadrat:  POB zero
          ŁAD suma_kw
          PZS
          ŁAD liczba
          ŁAD j
kw_petla: SOZ kw_koniec
          ŁAD j
          POB suma_kw
          DOD liczba
          ŁAD suma_kw
          POB j
          ODE 1
          SOB kw_petla
kw_koniec: DNS
           PWR              
                
zero: RST 0
jeden: RST 1
suma: RST 0
liczba: RPA
n: RST 1
i: RPA
j: RPA
suma_kw: RPA