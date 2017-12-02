View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Furniture DB")

const SEVEN := 10

var furnitures : array 1 .. SEVEN of string
var furnituresquant : array 1 .. SEVEN of int
var whatitem : string

for i : 1 .. SEVEN
    put "Furniture item ", i, ": " ..
    get furnitures (i) : *
    put "How many of ", furnitures (i), "?"
    get furnituresquant (i)
end for

put "Which item?"
get whatitem : *
for i : 1 .. SEVEN
    if whatitem = furnitures (i)
    then
	put furnituresquant (i)
    end if
end for
delay (5000)
cls
locate (15, 30)
color (red)
put "FIN"
