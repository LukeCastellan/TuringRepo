var commonroll : int
var roll : int
var quant1 : int
var quant2 : int
var quant3 : int
var quant4 : int
var quant5 : int
var quant6 : int

commonroll := 0
roll := 0
quant1 := 0
quant2 := 0
quant3 := 0
quant4 := 0
quant5 := 0
quant6 := 0

for i : 1 .. 20
    roll := Rand.Int (1, 6)
    put roll, " " ..
    case roll of
	label 1 :
	    quant1 += 1
	label 2 :
	    quant2 += 1
	label 3 :
	    quant3 += 1
	label 4 :
	    quant4 += 1
	label 5 :
	    quant5 += 1
	label 6 :
	    quant6 += 1
	label :
	    put ""
    end case
end for
put skip
put quant1, " 1s"
put quant2, " 2s"
put quant3, " 3s"
put quant4, " 4s"
put quant5, " 5s"
put quant6, " 6s"
