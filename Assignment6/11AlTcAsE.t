
var outword : string
var userinword : string

outword := ""

put "Enter word to AlTeRnAtE CaSe, enter DONE to exit."
put skip

loop

    put "Word: " ..

    get userinword

    exit when userinword = "DONE"

    for i : 1 .. length (userinword)
	if i mod 2 not= 0
		then
	    outword += Str.Upper (userinword (i))
	else
	    outword += Str.Lower (userinword (i))
	end if
    end for
    put outword
    outword := ""
    put skip

end loop

