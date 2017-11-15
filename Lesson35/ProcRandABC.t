function aA (input : string) : string
    const AA := "aa"
    const AYE := "a"
    var userinabc : string
    userinabc := ""
    for i : 1 .. length (input)
	if index (AYE, input (i)) not= 0
		then
	    userinabc += AA
	else
	    userinabc += input (i)
	end if
    end for
    result userinabc
end aA

function bToC (input : string) : string
    const C := "c"
    const B := "b"
    var userinabc : string
    userinabc := ""
    for i : 1 .. length (input)
	if index (B, input (i)) not= 0
		then
	    userinabc += C
	else
	    userinabc += input (i)
	end if
    end for
    result userinabc
end bToC

function surpriseC (input : string) : string
    const SURPRISE := "c"
    var userinabc : string
    var location : int
    location := Rand.Int (1, length (input))
    userinabc := ""
    for i : 1 .. length (input)
	if i = location
		then
	    userinabc += SURPRISE
	    userinabc += input (i)
	else
	    userinabc += input (i)
	end if
    end for
    result userinabc
end surpriseC

var randfunc : int
var userinabc : string

put "Enter some abcs to randomize."
get userinabc
for i : 1 .. 5
    randfunc := Rand.Int (1, 3)
    if randfunc = 1
	    then
	userinabc := aA (userinabc)
    elsif randfunc = 2
	    then
	userinabc := bToC (userinabc)
    else
	userinabc := surpriseC (userinabc)
    end if
end for
put userinabc
