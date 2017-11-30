View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Temperatures")

const FIVE := 10

var temps : array 1 .. FIVE of real
var tempsavg : real
var tempshigh : real

tempsavg := 0

%git
for i : 1 .. FIVE
    put "Temp: " ..
    get temps (i)
end for
delay (4000)
cls
%reverse
put "In reverse: "
for decreasing i : FIVE .. 1
    put temps (i), " " ..
end for
delay (4000)
cls
%avg
put "The average is: "
for i : 1 .. FIVE
    tempsavg += temps (i)
end for
put tempsavg / FIVE
delay (4000)
cls
%high
put "The highest is: "
var sorted : array 1 .. FIVE of real
for i : 1 .. FIVE
    var smallest : real := 214700000.0
    var where : int
    for j : 1 .. FIVE
	if temps (j) < smallest then
	    smallest := temps (j)
	    where := j
	end if
    end for
    sorted (i) := smallest
    temps (where) := 214700000
end for
put sorted(FIVE)
delay (4000)
cls
locate (15, 30)
color (red)
put "FIN"
