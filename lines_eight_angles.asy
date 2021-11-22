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

dot((0,0));

line l1 = line(A, true, B, true);
line l2 = line(C, true, D, true);

line lp = line(E, true, F, true);

draw(l1);
draw(l2);
draw(lp);

pair O1 = intersectionpoint(extend(l1), extend(lp));

markangle(A, O1, E, radius=-20, n=2);
markangle(F, O1, B, radius=20, n=2);

markangle(B, O1, E, radius=17);
markangle(A, O1, F, radius=17);

pair O2 = intersectionpoint(extend(l2), extend(lp));

markangle(C, O2, E, radius=-20, n=2, p=thick_pen);
markangle(F, O2, D, radius=20, n=2, p=thick_pen);

// defaultpen(thick_pen);
markangle(D, O2, E, radius=17, p=thick_pen);
markangle(C, O2, F, radius=17, p=thick_pen);
