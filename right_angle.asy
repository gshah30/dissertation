import geometry;

unitsize(1cm);

pair A = (0,3);
pair O = (0,0);
pair B = (4,0);

draw(A -- O);
draw(O -- B);

dot("$A$", A, 2NE);
dot("$O$", O, 2W);
dot("$B$", B, 2SE);

perpendicular(O, SW, O-B, size=6mm);
