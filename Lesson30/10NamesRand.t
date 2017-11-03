var chosenone : int
var chosenname : string
var userinname : string
var userinquant : int

chosenname := ""
userinquant := 0

put "Input 10 names to get a random one out."
loop
    put "Name: " ..
    get userinname
    userinquant += 1
    exit when userinquant = 10
    chosenone := Rand.Int (1, 10)
    for tauri : 1 .. chosenone
	chosenname := userinname
    end for
end loop
put chosenname

