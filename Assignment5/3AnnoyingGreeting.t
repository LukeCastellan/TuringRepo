% programmer: Paul Kuang
%
%       date: 2017-10-10
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

var userinfname : string
var userinlname : string

put "Please enter your full name, press any key to exit: "

get userinfname, userinlname

loop
put "Hello, ", userinfname, " ", userinlname
exit when hasch
end loop
