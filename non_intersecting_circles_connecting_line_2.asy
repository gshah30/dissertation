unitsize(0.25cm);

pair O1 = (-15,0);
pair O2 = (15,0);

real r1 = 5;
real r2 = 13;

path c1 = circle(O1, r1);
path c2 = circle(O2, r2);

pair A = (-10,0);
pair P = (-12,4);

pair B = (2,0);
pair Q = (20,12);

draw(c1);
draw(c2);

draw(A -- B);
draw(P -- Q);

dot("$A$", A, 2W);
dot("$B$", B, 2E);

dot("$P$", P, 2N);
dot("$Q$", Q, 2N);