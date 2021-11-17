import geometry;

import setup;

unitsize(1cm);

pair A = (6,0);
pair P = (3*sqrt(3),3);
pair O = (0,0);
pair B = (3,3*sqrt(3));
pair Q = (-3,3*sqrt(3));
pair C = (-6,0);

draw(O -- A);
draw(O -- B);
draw(O -- P);
draw(O -- Q);
draw(O -- C);

dot("$A$", A, 2NE);
dot("$O$", O, 2NE);
dot("$B$", B, 2NE);
dot("$P$", P, 2NE);
dot("$Q$", Q, 2NE);
dot("$C$", C, 2W);

// markangle(A, O, B, radius=30);
markangle(A, O, P, radius=32);
markangle(P, O, B, radius=35);
markangle(B, O, Q, radius=40, n=2);
markangle(Q, O, C, radius=35, n=2);

perpendicular(O, SW, O-P, size=8mm, light_pen);
