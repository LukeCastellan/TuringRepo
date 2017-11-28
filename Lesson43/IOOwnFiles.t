import GUI

View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:DIY File I/O")
GUI.SetBackgroundColor (darkgrey)

var clsButton : int
var fileField : int
var fileFieldLabel : int
var fileNum : int
var lineNum : string
var whatLine : int
var quitButton : int

whatLine := 0

procedure hideAll
    GUI.Hide (quitButton)
    GUI.Refresh
end hideAll

procedure fuckGoBack
    cls
    GUI.Refresh
    GUI.Show (quitButton)
    GUI.SetBackgroundColor (darkgrey)
end fuckGoBack

procedure openThis (fileName : string)
    GUI.SetBackgroundColor (white)
    hideAll
    open : fileNum, fileName, get
    if fileNum > 0 then
	loop
	    whatLine += 1
	    exit when eof (fileNum)
	    get : fileNum, lineNum : *
	    put whatLine, ": ", lineNum
	end loop
	whatLine := 0
    else
	put "Error 404 File not found."
	delay(500)
	fuckGoBack
    end if
end openThis

procedure YOUARETERMINATED
    cls
    GUI.Dispose (clsButton)
    GUI.Dispose (fileField)
    GUI.Dispose (fileFieldLabel)
    GUI.Dispose (quitButton)
    GUI.SetBackgroundColor (white)
    locate (15, 30)
    color (red)
    put "FIN"
    GUI.Quit
end YOUARETERMINATED

clsButton := GUI.CreateButtonFull (maxx - 80, 0, 80, "CLS", fuckGoBack, 40, "^C", false)
fileField := GUI.CreateTextFieldFull (10, 10, 100, "", openThis, 1, 0, 0)
fileFieldLabel := GUI.CreateLabel (10, 10 + GUI.GetHeight (fileField), "File to open")
quitButton := GUI.CreateButtonFull (0, maxy - 40, 80, "QUIT", YOUARETERMINATED, 40, "^Q", false)

loop
    exit when GUI.ProcessEvent
end loop
