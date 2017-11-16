function returnMidChar (input : string) : string
    if length (input) mod 2 not= 0
	    then
	result input (length (input) div 2 + 1)
    else
	result input (length (input) div 2)
    end if
end returnMidChar

put returnMidChar ("clef")
