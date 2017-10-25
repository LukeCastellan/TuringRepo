var firsthalf : string
var secondhalf : string
var outword : string
var userinword : string

firsthalf := ""
secondhalf := ""

put "Enter word to split, enter DONE to exit."

loop
    put "Word: " ..
    get userinword

    exit when userinword = "DONE"

    for i : 1 .. length (userinword) div 2
        firsthalf += userinword (i)
    end for
    for i2 : length (userinword) div 2 + 1 .. length (userinword)
        secondhalf += userinword (i2)
    end for

    outword := secondhalf + firsthalf
    put "Split word: ", outword
    put skip
end loop



