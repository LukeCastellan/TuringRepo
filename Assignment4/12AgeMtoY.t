const MONTHS_IN_YEAR := 12

var outage : real
var userinage : real

put "Enter month in ages to convert, enter negative to exit."

loop

    put "Age: " ..

    get userinage

    exit when userinage < 0

    outage := userinage / MONTHS_IN_YEAR

    put "Age in years: " ..

    put outage

    put skip

end loop
