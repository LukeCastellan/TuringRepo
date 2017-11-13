function cmToM (centi : real) : real
    var meter : real
    meter := centi / 100
    result meter
end cmToM

var cm : real
var userincm : string

cm := 0

put "Enter cm to convert to m."
put "Enter complex number equation to exit."
loop
    loop
	get userincm
	exit when userincm = "a+bi"
	if strrealok (userincm)
		then
	    cm := strreal (userincm)
	    exit
	else
	    put "Try again."
	end if
    end loop
    exit when userincm = "a+bi"
    put cm, " cm(s) is ", cmToM (cm), " meter(s)"
end loop
