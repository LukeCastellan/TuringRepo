% programmer: Paul Kuang
%
%       date: 2017-10-05
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

var userinnumber : real

loop
    put "Please enter a number, enter 0 to exit program: " ..

    get userinnumber
    if userinnumber = 0
	    then
	put "Exiting, it is now safe to [REDACTED]"
	quit
    end if
    for startint : 0 .. 13
	put userinnumber * startint : 0 : 2
    end for
    put skip
end loop
