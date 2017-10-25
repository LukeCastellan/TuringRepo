const VOWELS := "aeiou"

var outword : string
var userinword : string

outword := ""

put "Enter word to capitalize consonants, enter DONE to exit."
put skip

loop

    put "Word: " ..

    get userinword

    exit when userinword = "DONE"

    for i : 1 .. length (userinword)
	if index (VOWELS, userinword (i)) = 0
		then
	    outword += Str.Upper (userinword (i))
	elsif index (VOWELS, userinword (i)) not= 0
		then
	    outword += userinword (i)
	end if
    end for
    put outword
    outword := ""
    put skip

end loop
