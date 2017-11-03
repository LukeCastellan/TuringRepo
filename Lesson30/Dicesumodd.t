var dice1 : int
var dice2 : int
var dicesums : int
var oddsums : int

oddsums := 0

for i : 1 .. 30
    dice1 := Rand.Int (1, 6)
    dice2 := Rand.Int (1, 6)
    dicesums := dice1 + dice2
    if dicesums mod 2 not= 0
	    then
	oddsums += 1
    end if
    put dice1, " " ..
    put dice2, " "
end for
put oddsums, " Odd Sums."

