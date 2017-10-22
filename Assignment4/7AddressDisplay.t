var city : string
var country : string
var fullname : string
var outaddress : string
var postalcode : string
var province : string
var state : string
var streetadd : string
var zipcode : string

put "Please enter full name, street add. city and country."
put "Enter quit in name to exit."

loop
    put "Name: " ..

    get fullname : *
    
    exit when fullname = "quit"

    put "Street Address: "

    get streetadd : *

    put "City: " ..

    get city : *

    put "Country: " ..

    get country : *

    if country = "USA"
	    then
	put "State: " ..
	get state : *
	put "ZIP Code : " ..
	get zipcode : *
	put fullname, ", ", streetadd, ", ", city, ", ", state, ", ", country, ", ", zipcode
	put skip
    elsif country = "Canada"
	    then
	put "Province : " ..
	get province : *
	put "Postal Code: " ..
	get postalcode : *
	put fullname, ", ", streetadd, ", ", city, ", ", province, ", ", country, ", ", postalcode
	put skip
    else
	put fullname, ", ", streetadd, ", ", city, ", ", country
	put skip
    end if
end loop


