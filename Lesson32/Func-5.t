function minus5 (num : real) : real
    result num - 5
end minus5

var userinnumber : string
var realnumber : real

realnumber := 0

put "Enter number to -5."
put "Enter negative integer limit to exit."
loop
    loop
	get userinnumber
	if strrealok (userinnumber)
		then
	    realnumber := strreal (userinnumber)
	    exit
	else
	    put "Try again."
	end if
    end loop
    exit when realnumber = -2147483647
    put realnumber, " - 5 is ", minus5 (realnumber)
end loop
