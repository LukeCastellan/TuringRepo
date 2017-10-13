% programmer: Paul Kuang
%
%       date: 2017-10-12
%
%  file name: ExceedPop.t
%
%    purpose:
%
%      input:
%
% processing:
%
%     output:

var countryapop : real
var countrybpop : real
var year : int

countryapop := 50000000
countrybpop := 70000000
year := 50

for startint : 1.. year
countryapop := countryapop*1.03
countrybpop := countrybpop*1.02
end for
put countryapop
put countrybpop
