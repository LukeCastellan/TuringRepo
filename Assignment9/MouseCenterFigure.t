View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Centered Figure")

var figureVisible : boolean
var mousebtn, btnstate : int
var mouseX, mouseY : int
figureVisible := false

procedure drawFigure
    Draw.FillOval (mouseX, mouseY, 20, 20, 41)
end drawFigure

loop
    Mouse.ButtonWait ("up", mouseX, mouseY, mousebtn, btnstate)
    figureVisible := not figureVisible
    if figureVisible
	    then
	drawFigure
    else
	cls
    end if
end loop
