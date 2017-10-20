var UserInNumber : string
var UserInNumberNum : int

UserInNumberNum := 0

loop
    loop
	put "Enter number: " ..

	get UserInNumber

	exit when strintok (UserInNumber)
    end loop
    UserInNumberNum := strint (UserInNumber)


    for i : 1 .. UserInNumberNum - 1
	if i mod 4 = 0
		then
	    put i
	end if
    end for
end loop

