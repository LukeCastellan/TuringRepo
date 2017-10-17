% programmer: Paul Kuang
%
%       date: 2017-10-03
%
%  file name: Groupsof4.t
%
%    purpose:
%
%      input:
%
% processing:
%
%     output:

var groupsformed : int
var leftoverstudents : int
var userinstudents : int

loop
    put "Please enter the number of students, enter negative amount to exit: " ..

    get userinstudents

    if userinstudents < 0
	    then
	put "Exiting, groups disseminated for [DATA EXPUNGED]"
	exit
    end if

    groupsformed := userinstudents div 4

    leftoverstudents := userinstudents mod 4

    put "You can form ", groupsformed, " groups " ..

    put "with ", leftoverstudents, " Students left over."

    put skip

end loop
