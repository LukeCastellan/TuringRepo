function preciselyErase (input : string, remove : string) : string
    var output : string
    output := ""
    for i : 1 .. length (input)
	if index (remove, input (i)) = 0
		then
	    output += input (i)
	end if
    end for
    result output
end preciselyErase

put preciselyErase("spaghetti", "t")
