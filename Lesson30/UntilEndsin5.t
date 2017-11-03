var outnum : int
var outnumquant : int

outnumquant := 0

loop
    outnum := Rand.Int (1, 100)
    put outnum
    outnumquant += 1
    exit when outnum mod 10 = 5
end loop
put outnumquant, " tries needed."
