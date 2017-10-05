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

const thisyear := 2017

var outputage : real
var userinyear : real

loop
    put "Please enter Birthyear: " ..

    get userinyear

    outputage := thisyear - userinyear

    put "Your age is ", outputage

    put skip

end loop
