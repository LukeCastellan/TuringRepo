function doubleNum (input : real) : real
result input*2
end doubleNum

var userinnum : real

put "Enter number to double."
put "The program exits automatically when the input is too big."
loop
put "Num: "..
get userinnum
exit when userinnum >= 1073741820
put doubleNum(userinnum)
end loop
