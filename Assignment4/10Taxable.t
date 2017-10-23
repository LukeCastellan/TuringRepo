const TAX_RATE := 1.13

var outprice : real
var tax : real
var userinprice : real

put "Enter a price to find the one after tax, enter negative to exit."
put skip

loop

    put "Price: $" ..

    get userinprice

    exit when userinprice < 0

    if userinprice < 5
	    then
	put "Item is not taxable."
	put "Final Price: $", userinprice
	put skip
    else
	outprice := userinprice * TAX_RATE
	tax := userinprice * TAX_RATE - userinprice
	put "Tax: $", tax
	put "Final Price: $", outprice
	put skip
    end if
end loop



