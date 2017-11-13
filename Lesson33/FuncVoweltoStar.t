function vowelAsterisk (word : string) : string
    const VOWELS := "aeiouAEIOU"
    var output : string
    output := ""
    for i : 1 .. length (word)
	if index (VOWELS, word (i)) = 0
		then
	    output += word (i)
	else
	    output += "*"
	end if
    end for
    result output
end vowelAsterisk

var userinword : string

put "Enter word to convert."
put "Enter 233rd digit of Euler's number to exit."
loop
    put "Word: " ..
    get userinword
    exit when userinword = "6"
    put vowelAsterisk (userinword)
end loop
