% programmer: Paul Kuang
%
%       date: 2017-10-11
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

loop

    put "Please enter a color: " ..

    get userincolor

    if userincolor = "blue"
	    then
	color (blue)
	put "Thanks!"
	color (black)

    else
	put "Thanks!"
    end if
end loop
