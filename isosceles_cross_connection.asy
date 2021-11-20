import setup;

unitsize(1cm);

pair A = (0,9);
pair X = (-2,3);
pair B = (-3,0);
pair Y = (2,3);
pair C = (3,0);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);
dot("$X$", X, 2NW);
dot("$Y$", Y, 2NE);

draw(A -- B);
draw(B -- C);
draw(C -- A);
draw(B -- Y, single_light_central_marker);
draw(C -- X, single_light_central_marker);
