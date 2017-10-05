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

const inch2cm := 2.54

var outputcm : real
var userinexit : real
var userininch : real

loop
    put "Please enter an amount in Inches: " ..

    get userininch

    outputcm := userininch * inch2cm

    put userininch, " Inches is equal to ", outputcm, " Centimeters."
    
    put skip

end loop
