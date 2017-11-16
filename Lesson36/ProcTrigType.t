procedure trigType (angle1 : real, angle2 : real, angle3 : real)
    var total : real
    total := angle1 + angle2 + angle3
    if total = 180
	    then
	if angle1 = angle2 and angle2 = angle3
		then
	    put "Equilateral."
	elsif angle1 = angle2 or angle2 = angle3 or angle1 = angle3
		then
	    put "Isoceles."
	else
	    put "Scalene."
	end if
    else
	put "Not a triangle."
    end if
end trigType

trigType (30, 60, 90)

put "Example input of 30,60,90."

var userinangle1, userinangle2, userinangle3 : string
var angle1, angle2, angle3 : real

angle1 := 0
angle2 := 0
angle3 := 0

put "Enter 3 angles to find trig type."
put "Enter the approximation for any sin(x) to exit."
loop
    put "Angles: " ..
    get userinangle1 : *
    exit when userinangle1 = "sin(x) is x"
    get userinangle2, userinangle3
    if strrealok (userinangle1)
	    then
	angle1 := strreal (userinangle1)
    else
	put "Try again."
    end if
    if strrealok (userinangle2)
	    then
	angle2 := strreal (userinangle2)
    end if
    if strrealok (userinangle3)
	    then
	angle3 := strreal (userinangle3)
    end if
    trigType (angle1, angle2, angle3)
    angle1 := 0
    angle2 := 0
    angle3 := 0
end loop

