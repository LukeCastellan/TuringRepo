% programmer: Paul Kuang
%
%       date: 2017-10-11
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

const canadataxrate := 0.05
const hstrate := 0.08

var canadatax : real
var finalprice : real
var hst : real
var userinprice : real

put "Please enter item price, enter a negative number to exit"

loop
    put "Price: $" ..

    get userinprice

    canadatax := userinprice * canadataxrate
    hst := userinprice * hstrate
    finalprice := userinprice + hst + canadatax

    if userinprice < 5
	    then
	put "Final Price: $", userinprice : 0 : 2
    else
	put "Final Price: $", finalprice : 0 : 2
	put "Sales Tax: $", hst : 0 : 2
	put "Canadian Tax: $", canadatax : 0 : 2
    end if
    put skip
end loop
