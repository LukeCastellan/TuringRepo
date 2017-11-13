function midLetter (word : string) : string
    var midletter : char
    if length (word) mod 2 not= 0
	    then
	midletter := word (length (word) div 2 + 1)
    else
	midletter := word (length (word) div 2 + 1)
    end if
    result midletter
end midLetter

put midLetter ("abcdefg"), " out of 'abcdefg'."
