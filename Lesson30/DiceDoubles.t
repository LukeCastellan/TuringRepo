var dice1 : int
var dice2 : int
var doubles : int

doubles := 0

for i : 1 .. 30
    dice1 := Rand.Int (1, 6)
    dice2 := Rand.Int (1, 6)
    if dice1 = dice2
	    then
	doubles += 1
    end if
    put dice1, " "..
    put dice2, " "
end for
put doubles, " Doubles."
