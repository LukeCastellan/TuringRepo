procedure numPattern (MAX : int)
    for i : 1 .. MAX
	for i2 : 1 .. i - 1
	    put i ..
	end for
	put i
    end for
end numPattern
numPattern (15)
