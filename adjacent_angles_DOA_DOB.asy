import geometry;

unitsize(1cm);

pair A = (-7,2);
pair B = (7,-2);

pair C = (6,2);
pair D = (-6,-2);

pair O = (0,0);

dot("$A$", A, 2NE);
dot("$B$", B, 2NE);
draw(A -- B);

dot("$C$", C, 2NE);
dot("$D$", D, 2NE);
draw(C -- D);

dot("$O$", O, 2NE);

markangle(D, O, A, radius=-40, n=1);
markangle(D, O, B, radius=35, n=2);
