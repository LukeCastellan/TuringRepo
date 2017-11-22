import GUI

View.Set ("graphics:500;500,nobuttonbar")
Draw.Fill (maxx, maxy, grey, green)

var cmField : int
var cmFieldLabel : int
var inchField : int
var inchFieldLabel : int
var quitButton : int

procedure inchTocm (inchVal : string)
    var inch : real
    inch := strreal (inchVal)
    GUI.SetText (cmField, realstr((inch * 2.54), 0))
end inchTocm

procedure cmToinch (cmVal : string)
    var cm : real
    cm := strreal (cmVal)
    GUI.SetText (inchField, realstr((cm / 2.54), 0))
end cmToinch

cmField := GUI.CreateTextField (10, 10, 200, "", cmToinch)
cmFieldLabel := GUI.CreateLabel (10, 30 + GUI.GetHeight (cmField), "Centimeters")
inchField := GUI.CreateTextField (10, 100, 200, "", inchTocm)
inchFieldLabel := GUI.CreateLabel (10, 130, "Inches")
quitButton := GUI.CreateButtonFull(420,420, 80, "Quit", GUI.Quit, 80, "^Q", true)

loop
exit when GUI.ProcessEvent
end loop
