import geometry;

import setup;

unitsize(1cm);

pair A = (6,0);
// pair P = (3*sqrt(3),3);
pair O = (0,0);
pair B = (3,3*sqrt(3));
pair P = (-3,3*sqrt(3));
pair X = (-6,0);

draw(A -- O);
draw(O -- B);
draw(O -- P, light_pen);
draw(O -- X, light_pen);

dot("$A$", A, 2NE);
dot("$O$", O, 2NE);
dot("$B$", B, 2NE);
dot("$P$", P, 2NE, light_pen);
dot(X, light_pen);

markangle(A, O, B, radius=30, n=1);
markangle(B, O, P, radius=40, n=2, light_pen);
markangle(P, O, X, radius=35, n=2, light_pen);
