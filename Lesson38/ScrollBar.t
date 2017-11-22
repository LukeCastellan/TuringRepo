import GUI

View.Set ("graphics:700;400")
var fontName : string
var fontButton : int
var scrollBar : int

procedure Dud (value : int)
end Dud

procedure printFont
put Font.GetName
end printFont

fontButton := GUI.CreateButton(20,20,80, "Print Font", printFont)
scrollBar := GUI.CreateVerticalScrollBar (10, 10, 350,
    0, 400, 400, Dud)

loop
    exit when GUI.ProcessEvent
end loop
