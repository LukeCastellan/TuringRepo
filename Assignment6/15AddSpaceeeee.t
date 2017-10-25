const BLANK_SPACE := " "

var outword : string
var userinword : string

outword := ""
put "Enter word to get T R A N S C E N D E D version, DONE to exit."

loop

    put "Word: " ..

    get userinword
    
    exit when userinword = "DONE"

    for i : 1 .. length (userinword)
	outword += userinword (i) + BLANK_SPACE
    end for
    put outword
    put skip
    outword := ""
end loop
