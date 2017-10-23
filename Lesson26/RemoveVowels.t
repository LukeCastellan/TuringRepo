const VOWELS := "aeiouAEIOU"

var outword : string
var userinword : string

outword := ""

put "Please enter a word to remove vowels, enter DONE to exit."
put skip

loop

    put "Word: " ..

    get userinword : *

    exit when userinword = "DONE"

    for i : 1 .. length (userinword)
	if index (VOWELS, userinword (i)) = 0
		then
	    outword += userinword (i)
	end if
    end for
    put outword
    outword := ""
end loop

