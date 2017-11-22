import GUI

View.Set ("graphics:500;500")

procedure printText
put "Text"
end printText

var print : int := GUI.CreateButton (50, 10, 100, "Print Text",
    printText)
var quitBtn : int := GUI.CreateButton (200, 10, 0, "Quit", GUI.Quit)
loop
    exit when GUI.ProcessEvent
end loop


