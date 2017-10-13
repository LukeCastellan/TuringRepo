% programmer: Paul Kuang
%
%       date: 2017-10-12
%
%  file name: EvenNumRngREFIT.t
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

    put skip

    if userinnumber1 mod 2 not= 0
	    then
	put "Enter an even number, you worthless petaq!"
	get userinnumber1
    elsif userinnumber2 mod 2 not= 0
	    then
	put "Enter an even number, you worthless petaq!"
	get userinnumber2
    end if

    if userinnumber1 > userinnumber2
	    then
	put "Try a lower number, you worthless petaq!"
	get userinnumber1
    elsif userinnumber2 < userinnumber1
	    then
	put "The second number is higher, you worthless petaq!"
	get userinnumber2
    end if

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
