import geometry;

import setup;

unitsize(1cm);

pair A = (3,3);
pair B = (-2,5);

pair C = (4,3.5);
pair D = (-2,7);

pair E = (1,2);
pair F = (-1,8);

dot("$A$", A, 2S);
dot("$B$", B, 2S);

dot("$C$", C, 2N);
dot("$D$", D, 2N);

dot("$E$", E, 2W);
dot("$F$", F, 2E);

line l1 = line(A, true, B, true);
line l2 = line(C, true, D, true);

line lp = line(E, true, F, true);

draw(l1);
draw(l2);
draw(lp);

pair X = intersectionpoint(extend(l1), extend(lp));

// markangle(A, X, E, radius=-20, n=2);
markangle(F, X, B, radius=20, n=2);

// markangle(B, X, E, radius=17);
markangle(A, X, F, radius=17);

pair Y = intersectionpoint(extend(l2), extend(lp));

markangle(C, Y, E, radius=-20, n=2, p=thick_pen);
// markangle(F, Y, D, radius=20, n=2, p=thick_pen);

// defaultpen(thick_pen);
markangle(D, Y, E, radius=17, p=thick_pen);
// markangle(C, Y, F, radius=17, p=thick_pen);



dot("$X$", X, 2SW);
dot("$Y$", Y, 2NE);
