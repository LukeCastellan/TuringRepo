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

cubetotal := 0

for startint : 1 .. 8
cubetotal += startint**3
end for
put cubetotal
