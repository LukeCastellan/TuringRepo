function factorialnext (num : int) : int
    var factorialed : int
    factorialed := 1
    if num = 1
	    then
	result 1
    else
	result num * factorialnext (num - 1)
    end if
    put factorialed
end factorialnext

var userinnumber : string
var intnumber : int

intnumber := 0

put "Enter number to factorialize."
put "Enter above 12 to exit."
loop
    loop
	get userinnumber
	if strintok (userinnumber)
		then
	    intnumber := strint (userinnumber)
	    exit
	else
	    put "Try Again."
	end if
    end loop
    exit when intnumber > 13
    exit when intnumber <= 0
    put "Factorial of ", intnumber, " is ", factorialnext (intnumber)
end loop


