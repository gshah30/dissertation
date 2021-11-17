import geometry;

unitsize(1cm);

pair A = (-7,0);
pair O = (0,0);
pair B = (7,0);
pair P = (0,7);

draw(A -- O);
draw(O -- B);
draw(O -- P);

dot("$A$", A, 2NE);
dot("$O$", O, 2S);
dot("$B$", B, 2SE);
dot("$P$", P, 2N);

perpendicular(O, SW, O-B, size=6mm);
perpendicular(O, NW, O-A, size=6mm);

markangle(A, O, B, radius=-30);