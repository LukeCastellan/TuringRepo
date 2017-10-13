% programmer: Paul Kuang
%
%       date: 2017-10-12
%
%  file name: First8Cubes.t
%
%    purpose:
%
%      input:
%
% processing:
%
%     output:

var cubetotal : real
var userinnumber : int

put "Enter highest number to cube: "..

get userinnumber

cubetotal := 0

for startint : 1 .. userinnumber
cubetotal += startint**3
end for
put cubetotal
