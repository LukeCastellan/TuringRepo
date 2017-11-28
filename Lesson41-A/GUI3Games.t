import GUI

View.Set ("graphics:500;500;nobuttonbar")
Window.Set (defWinId, "title:Three Games.")
GUI.SetBackgroundColor (darkgrey)

var backButton : int
var circleButton : int
var growButton : int
var guessButton : int
var quitButton : int

function robustInt (toconvert : string) : int
    if strintok (toconvert)
	    then
	result strint (toconvert)
    else
	result - 1
    end if
end robustInt

procedure hideAll
    GUI.Hide (backButton)
    GUI.Hide (circleButton)
    GUI.Hide (growButton)
    GUI.Hide (guessButton)
    GUI.Hide (quitButton)
    GUI.Refresh
end hideAll

procedure showAll
    GUI.Show (backButton)
    GUI.Show (circleButton)
    GUI.Show (growButton)
    GUI.Show (guessButton)
    GUI.Show (quitButton)
    GUI.Refresh
end showAll

procedure guessingGame
    hideAll
    var guess : int
    var input : string
    var realinput : int
    guess := Rand.Int (1, 100)
    GUI.SetBackgroundColor (white)
    loop
	put "Integer: " ..
	get input
	if robustInt (input) not= -1
		then
	    realinput := robustInt (input)
	else
	    put "Try again."
	    delay (500)
	    exit
	end if
	if realinput < guess
		then
	    put "Higher."
	elsif realinput > guess
		then
	    put "Lower."
	else
	    put "Correct!"
	    delay (500)
	    exit
	end if
    end loop
    cls
    showAll
    GUI.SetBackgroundColor (darkgrey)
end guessingGame

procedure initGuess
    hideAll
    guessingGame
end initGuess

procedure growThis
    var newwidth, newheight : int
    newheight := GUI.GetHeight (growButton) + 10
    newwidth := GUI.GetWidth (growButton) + 10
    hideAll
    GUI.Show (growButton)
    GUI.Show (backButton)
    if GUI.GetHeight (growButton) < maxy and GUI.GetWidth (growButton) < maxx
	    then
	GUI.SetSize (growButton, newwidth, newheight)
    end if
end growThis

procedure drawCircle
    hideAll
    GUI.Show (circleButton)
    GUI.Show (backButton)
    var circleColor : int := Rand.Int (0, 255)
    var circleX : int := Rand.Int (0, maxx - 80)
    var circleY : int := Rand.Int (0, maxy - 80)
    Draw.FillOval (circleX, circleY, 80, 80, circleColor)
    GUI.Refresh
end drawCircle

procedure fuckGoBack
    cls
    GUI.SetSize (growButton, 80, 40)
    showAll
    GUI.Refresh
    GUI.SetBackgroundColor (darkgrey)
end fuckGoBack

procedure YOUARETERMINATED
    GUI.Dispose (backButton)
    GUI.Dispose (circleButton)
    GUI.Dispose (growButton)
    GUI.Dispose (guessButton)
    GUI.Dispose (quitButton)
    cls
    locate (15, 30)
    color (red)
    put "FIN"
    delay (400)
    GUI.Quit
end YOUARETERMINATED

backButton := GUI.CreateButtonFull (maxx - 80, maxy - 40, 80, "<--", fuckGoBack, 40, "B", false)
circleButton := GUI.CreateButtonFull (170, 10, 80, "Circle", drawCircle, 40, "^C", false)
growButton := GUI.CreateButtonFull (10, 10, 80, "Grow", growThis, 40, "^G", false)
guessButton := GUI.CreateButtonFull (90, 10, 80, "Guess", guessingGame, 40, "G", false)
quitButton := GUI.CreateButtonFull (0, maxy - 40, 80, "Quit", YOUARETERMINATED, 40, "^Q", false)

loop
    exit when GUI.ProcessEvent
end loop
