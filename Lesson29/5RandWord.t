var RANDlength : int
var userinword : string
var userinwordlength : int
var userinwordquant : int

userinwordlength := 0
userinwordquant := 0

RANDlength := Rand.Int (1, 10)

for i : 1 .. 5
    put "Enter word with ", RANDlength, " Chars: "

    get userinword

    userinwordlength := length (userinword)

    if userinwordlength not= RANDlength
	    then
	loop
	    put "Try again."
	    put RANDlength, " Chars: " ..
	    get userinword
	    userinwordlength := length (userinword)
	    exit when userinwordlength = RANDlength
	end loop
    else
	RANDlength := Rand.Int (1, 10)
	userinwordquant += 1
    end if
end for
put "Done!"

