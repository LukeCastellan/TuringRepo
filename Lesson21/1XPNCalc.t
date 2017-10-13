% programmer: Paul Kuang
%
%       date: 2017-10-12
%
%  file name: XPNCalc.t
%
%    purpose:
%
%      input:
%
% processing:
%
%     output:

var lastmagnitudein : real
var userinmagnitude : int
var userinnumber : real

loop
    put "Please enter a number and the magnitude of its highest exponent: "
    put "Enter zero for both to exit."

    get userinnumber, userinmagnitude

    lastmagnitudein := userinnumber + 1
    

    put skip

    if userinnumber = 0
	    then
	put "Exiting, it is now safe to [REDACTED]"
	quit
    elsif userinmagnitude = 0
	    then
	put "Exiting, it is now safe to [REDACTED]"
	quit
    end if
    for startint : 2 .. userinmagnitude
	lastmagnitudein += userinnumber**startint
    end for
    put lastmagnitudein
    put skip
end loop
