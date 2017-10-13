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

var userinmark : real

put "Please enter your mark, enter a negative number to exit."

loop

    put "Mark: " ..

    get userinmark

    if userinmark < 60 and userinmark > -1
	    then
	put "You failed."
    elsif userinmark < 0
	    then
	put "Exiting, it is now safe to cycle [REDACTED]"
	exit
    else
	put "You passed."
    end if
    put skip
end loop
