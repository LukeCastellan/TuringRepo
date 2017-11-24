import GUI

View.Set ("graphics:280,100,nobuttonbar")
Window.Set (defWinId, "title:C & F Converter")
GUI.SetBackgroundColor (grey)

var celsiusField : int
var celsiusFieldLabel : int
var cTofButton : int
var fahrenheitField : int
var fahrenheitFieldLabel : int
var fTocButton : int
var quitButton : int

procedure cTof
    var output : real
    output := strreal (GUI.GetText(celsiusField))
    output := (output * 1.8) + 32
    GUI.SetText (fahrenheitField, realstr (output, 0))
end cTof

procedure fToc 
    var output : real
    output := strreal (GUI.GetText(fahrenheitField))
    output := (output * (9 / 5)) + 32
    GUI.SetText (celsiusField, realstr (output, 0))
end fToc

procedure cTofField (dud : string)
cTof
end cTofField

procedure fTocField (dud1 : string)
fToc
end fTocField

celsiusField := GUI.CreateTextField (10, 10, 80, "", cTofField)
celsiusFieldLabel := GUI.CreateLabel (10, 10 + GUI.GetHeight (celsiusField), "Celsius")
fahrenheitField := GUI.CreateTextField (110, 10, 80, "", fTocField)
fahrenheitFieldLabel := GUI.CreateLabel (110, 10 + GUI.GetHeight (celsiusField), "Fahrenheit")
quitButton := GUI.CreateButtonFull (maxx - 60, maxy - 30, 20, "Quit", GUI.Quit, 20, "^Q", true)
cTofButton := GUI.CreateButtonFull (10, 30 + GUI.GetHeight (celsiusFieldLabel), 20, "->", cTof, 20, "^C", true)
fTocButton := GUI.CreateButtonFull (110, 30 + GUI.GetHeight (fahrenheitFieldLabel), 20, "<-", fToc, 20, "^F", true)

loop
    exit when GUI.ProcessEvent
end loop
