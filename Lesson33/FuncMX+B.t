function linearGraph (x : int, m : int, b : int) : int
    result m * x + b
end linearGraph

var userinx : int
var userinm : int
var userinb : int
put "Enter x, m and b to find y, enter -23477 for b to exit."
loop
    get userinx
    get userinm
    get userinb
    exit when userinb = -23477
    put linearGraph (userinx, userinm, userinb)
end loop
