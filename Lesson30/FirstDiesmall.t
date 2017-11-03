var dice1 : int
var dice2 : int
var timessmall : int

timessmall := 0

for tauri : 1 .. 30
    dice1 := Rand.Int (1, 6)
    dice2 := Rand.Int (1, 6)
    if dice1 < dice2
	    then
	timessmall += 1
    end if
    put dice1, " " ..
    put dice2, " "
end for
put timessmall, " times 1 < 2."

