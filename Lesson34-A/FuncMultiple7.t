function multipleOf7 (input : real) : boolean
    if input mod 7 = 0
	    then
	result true
    else
	result false
    end if
end multipleOf7

put multipleOf7 (1999)
