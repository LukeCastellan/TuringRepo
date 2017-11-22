import GUI

View.Set ("graphics:500;500;nobuttonbar")
Draw.Fill (maxx, maxy, grey, green)

var inputField : int
var outputField : int
var quitButton : int

procedure dud (wronginput : string)
end dud

procedure minusVowels (input : string)
    const VOWELS := "aeiouAEIOU"
    var output : string
    output := ""
    for i : 1 .. length (input)
	if index (VOWELS, input (i)) = 0
		then
	    output += input (i)
	end if
    end for
    GUI.SetText (outputField, output)
end minusVowels

inputField := GUI.CreateTextField (10, 10, 100, "", minusVowels)
outputField := GUI.CreateTextField (120, 10, 100, "", dud)
quitButton := GUI.CreateButtonFull (420, 420, 80, "Quit", GUI.Quit, 80, "^Q", true)

loop
    exit when GUI.ProcessEvent
end loop
