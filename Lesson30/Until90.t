var outnum : int
var outnumquant : int

outnumquant := 0

loop
    outnum := Rand.Int (1, 100)
    put outnum
    outnumquant += 1
    exit when outnum >= 90 and outnum < 100
end loop
put outnumquant, " tries needed."
