function triangleArea (H : real, B : real) : real
    var trigA : real
    trigA := H * B / 2
    result trigA
end triangleArea

var Base : string
var Height : string
var rBase : real
var rHeight : real

put "Enter parameters to calculate."
put "Enter 233rd digit of Euler's number to exit."
loop
    put "Height: " ..
    get Height
    exit when strrealok (Height)
end loop
loop
    put "Base: " ..
    get Base
    exit when strrealok (Base)
end loop
rBase := strreal (Base)
rHeight := strreal (Height)
put triangleArea (rHeight, rBase)

