var outword : string
var userinword : string

outword := ""

put "Please enter word, enter DONE to exit."

loop

put "Word: "..

get userinword

exit when userinword = "DONE"

for i : 1 .. length (userinword)
    if index ("dD", userinword(i)) = 0
	    then
	outword += userinword (i)
    end if
end for
    put outword
end loop
