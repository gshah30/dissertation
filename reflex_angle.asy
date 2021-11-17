import geometry;

unitsize(1cm);

pair A = (-7,-2);
pair O = (0,0);
pair B = (7,0);

draw(A -- O);
draw(O -- B);

dot("$A$", A, 2NE);
dot("$O$", O, 2W);
dot("$B$", B, 2SE);

markangle(A, O, B, radius=-30);
