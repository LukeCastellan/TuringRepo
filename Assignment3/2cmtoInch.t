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

const cm2inch := 0.393700787

var outputinch : real
var userincm : real

loop
    put "Please enter an amount in centimeters: " ..

    get userincm

    outputinch := userincm * cm2inch
    
    put userincm, " centimeters equals ", outputinch, " inches"
    put skip
end loop
