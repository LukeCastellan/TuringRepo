var firstchar : char
var inputquant : int
var lastchar : char
var userinword : string

inputquant := 0

loop
    put "Enter word: " ..

    get userinword

    firstchar := userinword (1)
    lastchar := userinword (*)
    inputquant += 1
    exit when inputquant > 5
    put firstchar, lastchar
end loop
put firstchar, lastchar
put "Exiting SCP-[REDACTED]"
