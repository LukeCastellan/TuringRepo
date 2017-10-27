const VOWELS := "aeiouAEIOU"
const PERCENT := "%"

var outword : string
var userinword : string

outword := ""

put "Enter a word to convert vowels to %, enter DONE to exit."

loop
    put "Word: " ..

    get userinword

    exit when userinword = "DONE"

    for i : 1 .. length (userinword)
	if index (VOWELS, userinword (i)) = 0
		then
	    outword += PERCENT
	else
	    outword += userinword (i)
	end if
    end for
    put outword
    put skip
    outword := ""
end loop
