import setup;

unitsize(1cm);

pair A = (0,8);
pair B = (-4,0);
pair C = (4,0);

pair X = (-2,4);
pair Y = (2,4);

draw(A -- B, two_single_marker);
draw(B -- C);
draw(C -- A, two_single_marker);

draw(B -- Y, double_light_central_marker);
draw(C -- X, double_light_central_marker);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

dot("$X$", X, 2NW);
dot("$Y$", Y, 2NE);