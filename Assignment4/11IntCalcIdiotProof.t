var denote : char
var userinnumber1 : real
var userinnumber2 : real
var outnumber : real

loop
    put "Enter Two Numbers with an operation: "

    get userinnumber1, denote, userinnumber2
    if userinnumber2 = 0
	    then
	    put "Exiting to prevent XK-Class scenario."
	exit
    end if
    case denote of
	label "+" :
	    outnumber := userinnumber1 + userinnumber2
	    put outnumber
	label "-" :
	    outnumber := userinnumber1 - userinnumber2
	    put outnumber
	label "*" :
	    outnumber := userinnumber1 * userinnumber2
	    put outnumber
	label "/" :
	    outnumber := userinnumber1 / userinnumber2
	    put outnumber
    end case
end loop


