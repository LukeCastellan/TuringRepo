var quantinput : int
var userinword : string
var userinwordlength : real
var userinwordavg : real
var userinwordquant : int

quantinput :=0
userinwordlength := 0
userinwordquant := 0

loop
    put "Enter word: " ..
    get userinword
    quantinput +=1
    exit when quantinput = 3
    userinwordquant += 1
    userinwordlength := length (userinword) + userinwordlength
end loop
userinwordavg := userinwordlength / userinwordquant
put "Average: " ..
put userinwordavg
