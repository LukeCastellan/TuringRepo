% programmer: Paul Kuang
%
%       date: 2017-10-12
%
%  file name: EvenNumRng.t
%
%    purpose:
%
%      input:
%
% processing:
%
%     output:

var userinnumber1 : int

var userinnumber2 : int

loop
    put "Please enter two even numbers, enter 0 for both to exit: "

    get userinnumber1, userinnumber2

    if userinnumber1 = 0
	    then
	put "Exiting, it is now safe to [REDACTED]"
	quit
    elsif userinnumber2 = 0
	    then
	put "Exiting, it is now safe to [REDACTED]"
	quit
    end if
    for startint : userinnumber1 .. userinnumber2 by 2
	put startint
    end for
end loop
