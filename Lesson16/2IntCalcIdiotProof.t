% programmer: Paul Kuang
%
%       date: 2017-10-04
%
%  file name: 2IntCalcIdiotProof.t
%
%    purpose: To perform basic mathematic operation on two real numbers, while
%    also stopping crashes like divide by zero from happening
%
%      input: Two Real Numbers, with a char to denote the operation in between
%
% processing: Runs one of the four operation on the numbers based on the denote
%
%     output: The result of the math operation; quit if divide by zero detected

var denote : char
var userinnumber1 : real
var userinnumber2 : real
var userinnumber3 : real

loop
    put "Enter Two Numbers with an operation: "

    get userinnumber1, denote, userinnumber2
    if userinnumber2 = 0
	    then
	    put "Exiting to prevent XK-Class scenario."
	exit
    end if
    case denote of
	label "+" :
	    userinnumber3 := userinnumber1 + userinnumber2
	    put userinnumber3
	label "-" :
	    userinnumber3 := userinnumber1 - userinnumber2
	    put userinnumber3
	label "*" :
	    userinnumber3 := userinnumber1 * userinnumber2
	    put userinnumber3
	label "/" :
	    userinnumber3 := userinnumber1 / userinnumber2
	    put userinnumber3
    end case
end loop

