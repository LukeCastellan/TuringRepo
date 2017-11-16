function isFactor (num : real, possiblefactor : real) : boolean
    if num mod possiblefactor = 0
	    then
	result true
    else
	result false
    end if
end isFactor

put isFactor (12, 6)
