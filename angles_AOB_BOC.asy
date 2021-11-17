import geometry;

unitsize(1cm);

pair A = (2,7);
pair O = (-5,-4);
pair B = (9,6);
pair C = (7,-7);

draw(A -- O);
draw(O -- B);
draw(O -- C);

dot("$A$", A, 2NW);
dot("$O$", O, 2NW);
dot("$B$", B, 2NW);
dot("$C$", C, 2SE);

markangle(A, O, B, radius=-35);
markangle(B, O, C, radius=-40);
