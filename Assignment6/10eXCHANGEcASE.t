var outword : string
var userinword : string

outword := ""

put "Enter word to EXCHANGE CASE, enter DONE to exit."
put skip

loop

    put "Word: " ..

    get userinword

    exit when userinword = "DONE"

    for i : 1 .. length (userinword)
	if userinword(i) >= "a" and userinword(i) <= "z"
		then
	    outword += Str.Upper (userinword (i))
	elsif userinword(i) >= "A" and userinword(i) <= "Z"
		then
	    outword += Str.Lower (userinword (i))
	end if
    end for
    put outword
    outword := ""
    put skip

end loop

