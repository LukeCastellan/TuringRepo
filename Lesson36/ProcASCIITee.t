procedure asciiT (width : int, height : int)
    for i : 1 .. width
	put "*" ..
    end for
    for i : 2 .. height
	locate (i, width div 2 + 1)
	put "*"
    end for
end asciiT

var w, h : int

get w, h
cls
asciiT (w, h)
