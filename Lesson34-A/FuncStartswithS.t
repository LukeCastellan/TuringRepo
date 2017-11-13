function startsWithS (input : string) : boolean
    if input (1) = "s" or input (1) = "S"
	    then
	result true
    else
	result false
    end if
end startsWithS

var userinword : string
put "Enter word to find out."
put "Enter the price of one brick of latinum, as of 2367 to exit."
loop
    get userinword : *
    exit when userinword = "Two Hundred Liters of Electro-Plasma"
    put startsWithS (userinword)
end loop
