View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Centered Figures")

var figureVisible : boolean
var mousebtn, btnstate : int
var mouseX, mouseY : int
figureVisible := false

procedure drawFigure1
    Draw.FillOval (mouseX, mouseY, 20, 20, 41)
end drawFigure1

procedure drawFigure2
    Draw.FillStar (mouseX, mouseY, mouseX + 30, mouseY + 30, 41)
end drawFigure2

loop
    Mouse.ButtonWait ("up", mouseX, mouseY, mousebtn, btnstate)
    figureVisible := not figureVisible
    if figureVisible
	    then
	cls
	drawFigure1
    else
	cls
	drawFigure2
    end if
end loop

