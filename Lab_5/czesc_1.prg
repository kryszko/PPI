        pob zero
        ład licznik

loop:   wpr 1
        ode hash
        soz l_plus
        sob loop

l_plus: pob licznik 
        dod jeden
        ład licznik
        ode trzy 
        soz end
        sob loop

end:    stp


licznik: rst 0
hash: rst '#'
jeden: rst 1
trzy: rst 3
zero: rst 0