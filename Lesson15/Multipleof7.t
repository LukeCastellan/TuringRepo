% programmer: Paul Kuang
%
%       date: 2017-10-03
%
%  file name: Multipleof7.t
%
%    purpose: To give an output that tells the user whether any arbitrary
%    number is a multiple of 7
%
%      input: Any real number
%
% processing: The input is ran through a modulus operation to check for
% remainders, to determine whether it is a multiple of 7 or not
%
%     output: A statement saying whether the input is or is not a multiple

var userinnumber : real

loop
    put "Please enter any real number, enter 0 to exit: " ..

    get userinnumber

    if userinnumber = 0
	    then
	put "Exiting, do not look at antimemetic [REDACTED]-7"
	exit
    end if

    if userinnumber mod 7 = 0
	    then
	put userinnumber, " mod 7 = 0, so it is a multiple."
	put skip
    else
	put "It is not a multiple of 7."
	put skip
    end if
end loop
