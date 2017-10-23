var interest : real
var interestdenote : char
var outamount : real
var userinprincipal : real

put "Enter principal and interest rate, enter negative to exit."
put "Denote interest rate type by adding m or y."

loop
    put "Principal: $" ..

    get userinprincipal

    exit when userinprincipal < 0

    put "Interest rate: " ..

    get interest

    get interestdenote

    interest := interest / 100
    if interestdenote = "m"
	    then
	outamount := userinprincipal + userinprincipal * (interest * 12)
    else
	outamount := userinprincipal + userinprincipal * interest
    end if

    put "After one year, you would owe $", outamount
end loop
