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

var firstchar : char
var lastchar : char
var midword : string
var systemoutword : string
var userinword : string

loop
    put "Please enter word, enter the word quit to exit: "

    get userinword
    if userinword = "quit"
	    then
	put "Exiting, it is now safe to [REDACTED]"
	quit
    end if
    midword := userinword (2 .. * -1)
    firstchar := userinword (1)
    lastchar := userinword (*)
    systemoutword := lastchar + midword + firstchar
    put systemoutword
    put skip
end loop
