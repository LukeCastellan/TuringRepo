var denote : char
var outmeasure : real
var userinmeasurement : real

put "Enter Measurement and Denote (i or c) to convert, negative to exit."

loop

put "Measurement + Denote: "..

get userinmeasurement

exit when userinmeasurement < 0

get denote

if denote = "i"
then
outmeasure := userinmeasurement * 2.54
put userinmeasurement, " inch(es) = ", outmeasure, " centimeter(s)."
put skip
elsif denote = "c"
then
outmeasure := userinmeasurement * 0.393701
put userinmeasurement, " cm = ", outmeasure, " inch(es)."
put skip
end if
end loop
