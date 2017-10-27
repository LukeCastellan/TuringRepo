var lettertoremove : char
var outword : string
var userindew : char
var userinremove : char
var userinword : string

outword := ""

put "Enter a word and letter to remove, DONE to exit."

loop

put "Word: "..

get userinword

exit when userinword = "DONE"

put "Letter: "..

get userinremove

lettertoremove := userinremove

for i : 1 .. length (userinword)
    if index (lettertoremove, userinword (i)) = 0
	    then
	outword += userinword (i)
    end if
end for

put outword
put skip
outword := ""
end loop

