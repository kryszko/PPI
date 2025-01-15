        pob zero
        ład c_licznik
        ład d_licznik
        ład licznik
        ład spr_i
        ład rozmiar
        ład dzialaj
        pob kopia
        ład zmien 
        pob kopia_2
        ład spr

main:   wpr 1
	ład tmp
        ode hash
        soz l_plus
        sob loop

l_plus: pob licznik 
        dod jeden
        ład licznik
        ode trzy 
        soz spr
        sob main

//end:    stp

//-----------------------------------------

loop:   pob tmp
        ode duze_a
        som skip 
        dod duze_a
        ode duze_f
        som zapisz
        soz zapisz

skip:   sob main

zapisz: pob tmp
zmien:  ład tab
        pob zmien
        dod jeden 
        ład zmien
        pob rozmiar 
        dod jeden
        ład rozmiar
        ład dzialaj
        sob main
        
        
//-----------------------------------------

//count:   pob rozmiar
//         ład tmp_rozmiar
//         pob zero

spr:     pob zero
         pob dzialaj
         ode jeden
         ład dzialaj
         som finale
zmn:     pob tab
         ode duze_c
         soz plus_c
         ode jeden
         soz plus_d
         sob spr_end


plus_c:  pob c_licznik
         dod jeden
         ład c_licznik
         sob spr_end

plus_d:  pob d_licznik
         dod jeden
         ład d_licznik
         sob spr_end


spr_end: pob zmn
         pob zmn
         dod jeden 
         ład zmn
         sob spr
         
//-----------------------------------------

space: rst 32
duze_r: rst 'R'
kropek: rst ':'

finale:         pob duze_r
                wyp 2
                pob kropek
                wyp 2 
                pob rozmiar
                SDP Write
                pob space 
                wyp 2
                
                pob duze_c
                wyp 2
                pob kropek
                wyp 2 
                pob c_licznik
                SDP Write
                pob space 
                wyp 2
                
                pob duze_d
                wyp 2
                pob kropek
                wyp 2 
                pob d_licznik
                SDP Write
                pob space 
                wyp 2
                stp                                 


Write:          ŁAD liczba
		POB Zero1
		DNS
		POB liczba
		SOM Abs
Posit:  	DZI St10
		MNO St10
		ŁAD tmp1
		POB liczba
		ODE tmp1
		DOD Znak0
		DNS
		POB tmp1
		DZI St10
		SOZ Kończ
		ŁAD liczba
		SOB Posit
Abs:    	POB Minus
		WYP 2
		POB Zero1
		ODE liczba
		ŁAD liczba
		SOB Posit
Kończ:  	PZS
		SOZ Wracaj
		WYP 2
		SOB Kończ
Wracaj: 	PWR
Zero1:   	RST 0
liczba: 	RPA
tmp1:    	RPA
St10:   	RST 10
Znak0:  	RST '0'
Minus:  	RST '-'


//-----------------------------------------
duze_c: rst 67
duze_d: rst 68
c_licznik: rst 0
d_licznik: rst 0
kopia_2: pob tab
spr_i: rst 0
dzialaj: rst 0

//-----------------------------------------

duze_a: rst 65
duze_f: rst 70
rozmiar: rst 0
jeden: rst 1
kopia: ład tab
tmp: rpa


//-----------------------------------------

licznik: rst 0
hash: rst '#'
trzy: rst 3
zero: rst 0


tab: rpa