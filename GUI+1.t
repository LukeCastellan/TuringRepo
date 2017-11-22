import GUI

View.Set ("graphics:500;500;nobuttonbar")
Draw.Fill (maxx, maxy, grey, green)

var additionField : int
var additionFieldLabel : int
var quitButton : int

procedure addOne (FieldInput : string)
    var output : string
    output := intstr (strint (FieldInput) + 1)
    GUI.SetText (additionField, output)
end addOne

additionField := GUI.CreateTextField (10, 10, 100, "", addOne)
additionFieldLabel := GUI.CreateLabel (10, 30 + GUI.GetHeight (additionField), "Integer")
quitButton := GUI.CreateButtonFull (420, 420, 80, "Quit", GUI.Quit, 80, "^Q", true)

loop
    exit when GUI.ProcessEvent
end loop
