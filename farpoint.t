View.Set ("graphics")

%bg
Draw.Fill (0, 0, 208, green)
%hedge
Draw.FillOval (304, 200, 110, 110, 192)
%lot of grass
Draw.FillOval (304, 200, 100, 100, green)
%octagons
var spiresX1 : array 1 .. 8 of int
var spiresY1 : array 1 .. 8 of int
var spiresX2 : array 1 .. 8 of int
var spiresY2 : array 1 .. 8 of int

spiresX1 (1) := 284
spiresY1 (1) := 130
spiresX1 (2) := 324
spiresY1 (2) := 130
spiresX1 (3) := 374
spiresY1 (3) := 180
spiresX1 (4) := 374
spiresY1 (4) := 220
spiresX1 (5) := 324
spiresY1 (5) := 270
spiresX1 (6) := 284
spiresY1 (6) := 270
spiresX1 (7) := 234
spiresY1 (7) := 220
spiresX1 (8) := 234
spiresY1 (8) := 180

spiresX2 (1) := 284
spiresY2 (1) := 140
spiresX2 (2) := 324
spiresY2 (2) := 140
spiresX2 (3) := 364
spiresY2 (3) := 180
spiresX2 (4) := 364
spiresY2 (4) := 220
spiresX2 (5) := 324
spiresY2 (5) := 260
spiresX2 (6) := 284
spiresY2 (6) := 260
spiresX2 (7) := 244
spiresY2 (7) := 220
spiresX2 (8) := 244
spiresY2 (8) := 180

Draw.Polygon (spiresX1, spiresY1, 8, blue)
Draw.Polygon (spiresX2, spiresY2, 8, blue)
%chrome points
for i : 1 .. 8
    Draw.FillOval (spiresX1 (i), spiresY1 (i), 5, 5, 91)
end for
for i : 1 .. 8
    Draw.FillOval (spiresX1 (i), spiresY1 (i), 2, 2, yellow)
end for
%transversal lines
Draw.Line (204, 200, 404, 200, blue)
Draw.Line (304, 300, 304, 100, blue)
Draw.Line (354, 250, 254, 150, blue)
Draw.Line (254, 250, 354, 150, blue)
%central building
Draw.FillOval (304, 200, 25, 25, grey)
Draw.FillOval (304, 200, 16, 16, brightblue)
%mountain range
%TODO
