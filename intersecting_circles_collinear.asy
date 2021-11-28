import setup;

unitsize(0.25cm);

pair C1 = (-5,0);
pair C2 = (9,0);

real r1 = 13;
real r2 = 15;

path c1 = circle(C1, r1);
path c2 = circle(C2, r2);

draw(c1);
draw(c2);

pair[] ps = intersectionpoints(c1, c2);

pair A = (0,12);
pair B = (0,-12);
pair P = (-10,-12);
pair Q = (18,-12);

dot("$C1$", C1, 2W);
dot("$C2$", C2, 2E);

draw(A -- P);
draw(A -- Q);

dot("$A$", A, 2N);
dot("$B$", B, 2S);

dot("$P$", P, 2SW);
dot("$Q$", Q, 2SE);

draw(P -- B -- Q, light_pen);