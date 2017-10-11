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
var useroutnumber : real

put "Please enter a number, enter 0 to exit: "

loop
put "Number: "..

get userinnumber

if userinnumber >0
then
useroutnumber := userinnumber*-1
put "The opposite of the number is: ", useroutnumber
elsif userinnumber <0
then
useroutnumber := userinnumber*-1
put "The opposite of the number is: ", useroutnumber
else
put "The opposite of 0 is 0 :P"
put "Exiting, it is now safe to [REDACTED]"
quit
end if
end loop
