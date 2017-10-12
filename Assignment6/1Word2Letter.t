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

loop
    put "Please enter word, enter the word quit to exit: "

    get userinword
    if userinword = "quit"
	    then
	put "Exiting, it is now safe to [REDACTED]"
	quit
    end if
    for startint : 1 .. length (userinword)
	put userinword (startint)
    end for
    put skip
end loop

