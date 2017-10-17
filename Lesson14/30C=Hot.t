% programmer: Paul Kuang
%
%       date: 2017-10-03
%
%  file name: 30C=Hot.t
%
%    purpose: To give an output based on the user's input (Over 30 = Hot)
%
%      input: A temperature, in numeric form; Celsius form
%
% processing: Check input, if input>30, then output that it is hot
%
%     output: A statement indicating whether it is hot or not

var userintemp : real

loop
    put "Please enter the temperature, enter below Absolute Zero to exit: "

    get userintemp

    if userintemp > 30
	    then
	put "It is hot!"
	put skip
    elsif userintemp < -273.156
	    then
	put "Exiting, the room now feels [DATA EXPUNGED]"
	exit
    else
	put "It is not that hot, deal with it."
	put skip
    end if
end loop
