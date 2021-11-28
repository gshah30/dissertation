unitsize(1cm);

pair O = (0,0);
pair X = (3,0);
pair Y = (-4,0);

real r = 5;

path c = circle(O,r);
draw(c);

pair A = (3,4);
pair B = (3,-4);

pair P = (-4,3);
pair Q = (-4,-3);

draw(A -- B);
draw(P -- Q);

dot("$O$", O, 2N);
dot("$A$", A, 2NE);
dot("$B$", B, 2SE);
dot("$P$", P, 2NW);
dot("$Q$", Q, 2SW);

draw(X -- O, dashed);
draw(Y -- O, dashed);

dot("$X$", X, 2E);
dot("$Y$", Y, 2W);