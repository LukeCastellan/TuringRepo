function doubleNum (input : real) : real
    result input * 2
end doubleNum

var userinnum : real

put "Enter number to double."
put "The program exits automatically when the limit is reached."

put "Num: " ..
get userinnum
loop
    put doubleNum (userinnum)
    userinnum := doubleNum (userinnum)
    exit when userinnum > 107000000
end loop
