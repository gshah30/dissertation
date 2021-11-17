import setup;

unitsize(1cm);

pair A = (-5,7);
pair B = (-8,0);
pair C = (-2,0);

draw(A -- B, single_central_marker);
draw(B -- C, double_central_marker);
draw(C -- A, single_central_marker);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);


pair X = (4,7);
pair Y = (1,0);
pair Z = (7,0);

draw(X -- Y, single_central_marker);
draw(Y -- Z, double_central_marker);
draw(Z -- X, single_central_marker);

dot("$X$", X, 2N);
dot("$Y$", Y, 2SW);
dot("$Z$", Z, 2SE);