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

var markavg : real
var marktotal : real
var markquantity : int
var userinmark : real

marktotal := 0
markquantity := 0

put "Please enter a mark, type a negative number to exit: "

loop
    put "Mark: " ..

    get userinmark
    if userinmark < 0
	    then
	put "Final average: ", markavg : 0 : 2
	put "Exiting, it is now safe to [REDACTED]"
	quit
    else
	markquantity += 1
	marktotal := marktotal + userinmark
	markavg := marktotal / markquantity
	put "Average: ", markavg : 0 : 2
    end if
end loop
