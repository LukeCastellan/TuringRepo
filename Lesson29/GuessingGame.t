var guessnum : int
var userinnumber : int

guessnum := Rand.Int (1, 100)

put "Enter Number between 1 to 100 to guess."

loop
    put "Number: " ..
    get userinnumber
    if userinnumber > guessnum
	    then
	put "Lower."
    elsif userinnumber < guessnum
	    then
	put "Higher."
    end if
    exit when userinnumber = guessnum
end loop
