% programmer:
%
%       date:
%
%  file name:
%
%    purpose:
%
%      input:
%
% processing:
%
%     output:

var userincolor : string

put "Please enter a color, enter transparent to exit."

loop

    put "Color: " ..

    get userincolor

    if userincolor = "red"
	    then
	color (red)
	put "Thanks!"
	color (black)
    elsif userincolor = "blue"
	    then
	color (blue)
	put "Thanks!"
	color (black)
    elsif userincolor = "transparent"
	    then
	put "Exiting, it is now safe to read [DATA EXPUNGED]"
	exit
    else
	put "Thanks!"
    end if
    put skip
end loop
