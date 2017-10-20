var inputquant : int
var lengthofword : int
var longestword : string
var userinword : string

inputquant := 0
lengthofword := 0

loop
    put "Enter Word: " ..
    get userinword
    inputquant += 1
    exit when inputquant > 5
    if length (userinword) > lengthofword
	    then
	lengthofword := length (userinword)
	longestword := userinword
    end if
end loop
put longestword, " with ", lengthofword, " letters"
