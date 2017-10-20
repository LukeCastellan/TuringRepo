var firstchar : char
var lastchar : char
var userinword : string


put "Enter EXIT to quit."
loop
    put "Enter word: " ..

    get userinword
    exit when userinword = "EXIT"
    firstchar := userinword (1)
    lastchar := userinword (*)
    put firstchar, lastchar
end loop

