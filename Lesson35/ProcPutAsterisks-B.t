procedure stars (line_number : int)
    for i : 1 .. line_number
	put "*****"
    end for
end stars

var reallines : int
var userinlines : string

reallines := 0

put "Enter how many lines of * to put."
put "Enter the square root of i to exit."
loop
    put "Lines: " ..
    get userinlines
    exit when userinlines = "-1"
    if strintok (userinlines)
	    then
	reallines := strint (userinlines)
	stars(reallines)
    else
	put "Try again"
    end if
end loop
