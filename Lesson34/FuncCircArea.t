function circArea (rad : real) : real
    var circarea : real
    circarea := rad ** 2 * 3.14
    result circarea
end circArea

var realrad : real
var userinrad : string

realrad := 0

put "Enter radius to get area."
put "Enter the sum of 1+1-1+1... to exit"
loop
    put "R: " ..
    get userinrad
    exit when userinrad = "1/2"
    if strrealok (userinrad)
	    then
	realrad := strreal (userinrad)
	exit
    else
	put "Try again."
    end if
end loop
put circArea (realrad)
