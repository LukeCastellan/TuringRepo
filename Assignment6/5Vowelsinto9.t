const VOWELS := "aeiouAEIOU"
const NINE := "9"

var outword : string
var userinword : string

outword := ""

put "Enter a word to convert vowels to 9, enter DONE to exit."

loop
    put "Word: " ..

    get userinword

    exit when userinword = "DONE"

    for i : 1 .. length (userinword)
	if index (VOWELS, userinword (i)) not= 0
		then
	    outword += NINE
	else
	    outword += userinword (i)
	end if
    end for
    put outword
    put skip
    outword := ""
end loop
