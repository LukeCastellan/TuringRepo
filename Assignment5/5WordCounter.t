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

var userinword : string
var wordcounter : int

wordcounter := 0

put "Please enter words one at a time, type kms to exit: "

loop
put "Word: "..
get userinword
if userinword = "kms"
then
put "You have entered ", wordcounter, " words"
put "Exiting, it is now safe to [REDACTED]"
quit
else
wordcounter+=1
put wordcounter, " words"
end if
end loop
