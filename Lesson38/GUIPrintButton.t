import GUI

View.Set ("graphics:500;500")

procedure printText
put "Text"
end printText

var print : int := GUI.CreateButton (50, 10, 100, "Print Text",
    printText)
loop
    exit when GUI.ProcessEvent
end loop

