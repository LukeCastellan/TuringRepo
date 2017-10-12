% programmer: Paul Kuang
%
%       date: 2017-10-03
%
%  file name: 175cm=Tall.t
%
%    purpose: To give an output based on the user's input (Over 175 = Tall)
%
%      input: A height, in centimeter form
%
% processing: Check input, if input>175, then output that the user is tall
%
%     output: A statement indicating that the user is tall

var userinheight : real

loop
    put "Please enter your height in centimeters: " ..

    get userinheight

    if userinheight > 175
	    then
	put "You are tall!"
	put skip
    end if
end loop
