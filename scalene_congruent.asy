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