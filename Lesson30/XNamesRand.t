var chosenone : int
var chosenname : string
var namequant : int
var userinname : string
var userinquant : int

chosenname := ""
userinquant := 0

put "Input x names to get a random one out."
loop
    get namequant
    exit when namequant > 0
    put "Try again."
end loop
loop
    put "Name: " ..
    get userinname
    userinquant += 1
    exit when userinquant = namequant
    chosenone := Rand.Int (1, namequant)
    for tauri : 1 .. chosenone
	chosenname := userinname
    end for
end loop
put "The chosen name is: ",chosenname

