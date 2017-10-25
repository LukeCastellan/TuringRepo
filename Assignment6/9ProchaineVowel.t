const VOWELS := "aeiouAEIOU"

var charnum : int
var outword : string
var userinword : string

outword := ""

put "Enter word to push and exchange vowels, enter DONE to exit."
put skip

loop

    put "Word: " ..

    get userinword

    exit when userinword = "DONE"

    for i : 1 .. length (userinword)
	if index (VOWELS, userinword (i)) not= 0
		then
	       charnum := ord(userinword(i)) - ord(userinword(i)) + ord(ord(userinword(i) + 32)
	    outword +=  (userinword (i))
	elsif index (VOWELS, userinword (i)) = 0
		then
	    outword += chr (charnum)
	end if
    end for
    put outword
    outword := ""
    put skip

end loop
