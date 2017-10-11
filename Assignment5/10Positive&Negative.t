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

var negativecounter : int
var positivecounter : int
var userinnumber : real

negativecounter := 0
positivecounter := 0

put "Please enter a number, enter 0 to exit: "

loop
    put "Number: " ..

    get userinnumber

    if userinnumber > 0
	    then
	positivecounter += 1
	put "Positive: ", positivecounter
	put "Negative: ", negativecounter
	put skip
    elsif userinnumber < 0
	    then
	negativecounter += 1
	put "Positive: ", positivecounter
	put "Negative: ", negativecounter
	put skip
    else
	put skip
	put "Positive: ", positivecounter
	put "Negative: ", negativecounter
	put "Exiting, it is now safe to [REDACTED]"
	quit
    end if
end loop
