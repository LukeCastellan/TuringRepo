View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Temperatures")

const TWENTYTWO := 50
const POSSIBLE := 12

var dicesum : int
var die1 : int
var die2 : int
var whatsum : int
var whatsums : array 2 .. POSSIBLE of int

whatsums (2) := 0
whatsums (3) := 0
whatsums (4) := 0
whatsums (5) := 0
whatsums (6) := 0
whatsums (7) := 0
whatsums (8) := 0
whatsums (9) := 0
whatsums (10) := 0
whatsums (11) := 0
whatsums (12) := 0

for i : 1 .. TWENTYTWO
    die1 := Rand.Int (1, 6)
    die2 := Rand.Int (1, 6)
    dicesum := die1 + die2
    for i2 : 2 .. POSSIBLE
	if dicesum = i2
		then
	    whatsums (i2) += 1
	end if
    end for
end for

put "What sum?"
get whatsum
put whatsums (whatsum)
delay(1000)
cls
locate (15, 30)
color (red)
put "FIN"
