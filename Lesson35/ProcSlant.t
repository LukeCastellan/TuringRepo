procedure slant (lines : int)
    for i : 1 .. lines
	for i2 : 2 .. i
	    put " " ..
	end for
	put "*"
    end for
end slant

slant (7)
slant (2)
