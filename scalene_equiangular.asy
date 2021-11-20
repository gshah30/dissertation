import geometry;

import setup;

unitsize(1cm);

pair A = (-5,4);
pair B = (-11,7);
pair C = (-7,-5);

draw(A -- B, single_central_marker);
draw(B -- C, double_central_marker);
draw(C -- A, triple_central_marker);

dot("$A$", A, 2NE);
dot("$B$", B, 2NW);
dot("$C$", C, 2S);

pair X = (5,4);
pair Y = (-1,7);
pair Z = (3,-5);

draw(X -- Y, single_central_marker);
draw(Y -- Z, double_central_marker);
draw(Z -- X, triple_central_marker);

dot("$X$", X, 2NE);
dot("$Y$", Y, 2NW);
dot("$Z$", Z, 2S);

markangle(A, B, C, radius=-35, n=3);
markangle(B, C, A, radius=-35, n=2);
markangle(C, A, B, radius=-35, n=1);

markangle(X, Y, Z, radius=-35, n=3);
markangle(Y, Z, X, radius=-35, n=2);
markangle(Z, X, Y, radius=-35, n=1);