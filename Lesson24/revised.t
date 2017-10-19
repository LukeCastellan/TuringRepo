var tempin : string
var tempreal : real

loop
    loop
	put "Temperature: " ..

	get tempin

	exit when strrealok (tempin)
	put "Not Valid."
    end loop
    if strrealok (tempin)
	    then
	tempreal := strreal (tempin)
    end if

    if tempreal > 30
	    then
	put "It is hot."
    elsif tempreal < -274
	    then
	put "Preventing ZK-Class [DATA EXPUNGED]"
	exit
    else
	put "It is not hot, deal with it."
    end if
end loop
