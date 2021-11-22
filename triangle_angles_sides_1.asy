import geometry;

import setup;

pair A = (-5,4);
pair B = (-11,7);
pair C = (-7,-5);

draw(A -- B);
draw(B -- C);
draw(C -- A);

dot("$A$", A, 2NE);
dot("$B$", B, 2NW);
dot("$C$", C, 2S);

// pair X = (5,4);
// pair Y = (-1,7);
// pair Z = (3,-5);

// draw(X -- Y, single_central_marker);
// draw(Y -- Z, double_central_marker);
// draw(Z -- X, triple_central_marker);

// dot("$X$", X, 2NE);
// dot("$Y$", Y, 2NW);
// dot("$Z$", Z, 2S);

// markangle(A, B, C, radius=-35, n=3, light_pen);
markangle(B, C, A, radius=-35, n=2, light_pen);
markangle(C, A, B, radius=-35, n=1, light_pen);

// markangle(X, Y, Z, radius=-35, n=3);
// markangle(Y, Z, X, radius=-35, n=2);
// markangle(Z, X, Y, radius=-35, n=1);