        pob zero
        ład licznik
        ład spr_i
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
        ład tmp
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
        sob main
        
        
//-----------------------------------------

spr:     pob tab
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


spr_end: pob spr
         dod jeden 
         ład spr
         sob spr


//-----------------------------------------

duze_c: rst 67
duze_d: rst 68
c_licznik: rst 0
d_licznik: rst 0
kopia_2: pob tab
spr_i: rst 0

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