const pi := 3.14

var area : real
var circumference : real
var diameter : real
var userinradius : real

put "Enter radius for area + circumference, enter negative to exit."

loop
    put "Radius: " ..

    get userinradius
    
    diameter := userinradius * 2

    exit when userinradius < 0

    area := (userinradius ** 2) * pi
    circumference := 2 * pi * userinradius

    put "Area: ", area

    put "Circumference: ", circumference
    
    put "Diameter : ", diameter
    
    put "Radius: ", userinradius
    put skip
end loop
