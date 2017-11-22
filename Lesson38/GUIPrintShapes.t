import GUI

View.Set ("graphics:500;500")

procedure printCirc
Draw.FillOval(100,100, 100, 100, 41)
end printCirc

var printCircle : int := GUI.CreatePictureRadioButtonFull (50, 10, 100, "Print Text",
    printCirc)
var quitBtn : int := GUI.CreateButton (200, 10, 0, "Quit", GUI.Quit)
loop
    exit when GUI.ProcessEvent
end loop



