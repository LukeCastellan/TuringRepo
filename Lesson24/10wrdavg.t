var userinword : string
var userinwordlength : real
var userinwordavg : real
var userinwordquant : int

userinwordlength := 0
userinwordquant := 0

for i : 1 .. 10
    put "Enter word: " ..
    get userinword
    userinwordquant += 1
    userinwordlength := length (userinword) + userinwordlength
end for
userinwordavg := userinwordlength / userinwordquant
put "Average: " ..
put userinwordavg
