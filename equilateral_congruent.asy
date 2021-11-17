import setup;

unitsize(1cm);

pair A = (-3,3*sqrt(3));
pair B = (-6,0);
pair C = (0,0);

draw(A -- B, single_central_marker);
draw(B -- C, single_central_marker);
draw(C -- A, single_central_marker);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

pair X = (6,3*sqrt(3));
pair Y = (3,0);
pair Z = (9,0);

draw(X -- Y, single_central_marker);
draw(Y -- Z, single_central_marker);
draw(Z -- X, single_central_marker);

dot("$X$", X, 2N);
dot("$Y$", Y, 2SW);
dot("$Z$", Z, 2SE);