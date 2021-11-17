import geometry;

import setup;

unitsize(1cm);

pair A = (-6,2);
pair C = (-6,-2);

pair B = (6,-2);
pair D = (6,2);

pair O = (0,0);
pair Y = (-4.5,0);
pair X = (6,0);

draw(A -- B);
draw(C -- D);

draw(O -- X);
draw(O -- Y, light_pen);

dot("$A$", A, 2NW);
dot("$C$", C, 2SW);

dot("$B$", B, 2SE);
dot("$D$", D, 2NE);

dot("$O$", O, 2N);
dot("$X$", X, 2E);

markangle(A, O, Y, radius=30, n=3, p=light_pen);
markangle(C, O, Y, radius=-35, n=3, p=light_pen);

markangle(B, O, X, radius=30, n=2);
markangle(D, O, X, radius=-35, n=2);