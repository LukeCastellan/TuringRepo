var dice1 : int
var dice2 : int
var dicesums : int
var triesto2 : int

triesto2 := 0

loop
    dice1 := Rand.Int (1, 6)
    dice2 := Rand.Int (1, 6)
    dicesums := dice1 + dice2
    triesto2 += 1
    put dice1, " " ..
    put dice2, " "
    exit when dicesums = 2
end loop
put triesto2, " Tries needed to get snake eyes."

