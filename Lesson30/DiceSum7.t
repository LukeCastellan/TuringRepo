var dice1 : int
var dice2 : int
var dicesums : int
var triesto7 : int

triesto7 := 0

loop
    dice1 := Rand.Int (1, 6)
    dice2 := Rand.Int (1, 6)
    dicesums := dice1 + dice2
    triesto7 += 1
    put dice1, " " ..
    put dice2, " "
    exit when dicesums = 7
end loop
put triesto7, " Tries needed to get to 7."

