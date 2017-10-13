% programmer: Paul Kuang
%
%       date: 2017-10-12
%
%  file name: First8Cubes.t
%
%    purpose:
%
%      input:
%
% processing:
%
%     output:

var cubetotal : real
var userinhighnumber : int
var userinlownumber : int

loop
    put "Enter lowest and highest numbers to cube, enter 0 on both to exit: " ..

    get userinlownumber, userinhighnumber

    if userinlownumber > userinhighnumber
	    then
	put "Enter a lower number"
	put skip
	get userinlownumber
    elsif userinlownumber = 0
	    then
	put "Exiting, it is now safe to [REDACTED]"
	quit
    end if

    cubetotal := 0

    for startint : userinlownumber .. userinhighnumber
	cubetotal += startint ** 3
    end for
    put cubetotal
    put skip
end loop
