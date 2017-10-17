% programmer: Paul Kuang
%
%       date: 2017-10-11
%
%  file name: ColorsoftheRainbow.t
%
%    purpose:
%
%      input:
%
% processing:
%
%     output:

var userincolor : string

loop
    put "Please enter a color, enter transparent to exit: "
    
    put "Color: "..

    get userincolor

    if userincolor = "transparent"
	    then
	put "Exiting, rainbow is now [REDACTED]."
	exit
    end if

    case userincolor of
	label "Red" :
	    color (red)
	    put "Red is a color of the rainbow."
	    color (black)
	label "Orange" :
	    color (41)
	    put "Orange is a color of the rainbow."
	    color (black)
	label "Yellow" :
	    color (yellow)
	    put "Yellow is a color of the rainbow."
	    color (black)
	label "Green" :
	    color (green)
	    put "Green is a color of the rainbow."
	    color (black)
	label "Blue" :
	    color (blue)
	    put "Blue is a color of the rainbow."
	    color (black)
	label "Indigo" :
	    color (34)
	    put "Indigo is a color of the rainbow."
	    color (black)
	label "Violet" :
	    color (purple)
	    put "Violet is a color of the rainbow."
	    color (black)
	label :
	    put userincolor, " is not a color of the rainbow"
    end case
end loop
