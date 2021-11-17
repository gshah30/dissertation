import geometry;

unitsize(1cm);

pair A = (6,0);
pair P = (3*sqrt(3),3);
pair O = (0,0);
pair B = (3,3*sqrt(3));

draw(A -- O);
draw(O -- B);
draw(O -- P);

dot("$A$", A, 2NE);
dot("$O$", O, 2NE);
dot("$B$", B, 2NE);
dot("$P$", P, 2NE);

markangle(A, O, P, radius=40, n=2);
markangle(P, O, B, radius=35, n=2);
