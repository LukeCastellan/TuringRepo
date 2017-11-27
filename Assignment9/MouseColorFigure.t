View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Centered Figure")

var figureVisible : boolean
var mousebtn, btnstate : int
var mouseX, mouseY : int
figureVisible := false

procedure drawFigure
    Draw.FillOval (mouseX, mouseY, 20, 20, 41)
end drawFigure

procedure changeColor
    var randColor : int
    randColor := Rand.Int (1, 255)
    if not (randColor = white)
	    then
	Draw.Fill (mouseX, mouseY, randColor, white)
    end if
end changeColor

loop
    Mouse.ButtonWait ("up", mouseX, mouseY, mousebtn, btnstate)
    figureVisible := not figureVisible
    if figureVisible
	    then
	cls
	drawFigure
	changeColor
    end if
end loop

