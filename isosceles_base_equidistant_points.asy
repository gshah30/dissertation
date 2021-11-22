import setup;

unitsize(1cm);

pair A = (0,12);
pair B = (-4,0);
pair C = (4,0);

pair X = (-2,0);
pair Y = (2,0);

draw(B -- X, p=white, single_central_marker);
draw(C -- Y, p=white, single_central_marker);

draw(A -- B, double_central_marker);
draw(B -- C);
draw(C -- A, double_central_marker);

draw(A -- Y, triple_light_central_marker);
draw(A -- X, triple_light_central_marker);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

dot("$X$", X, 2NW);
dot("$Y$", Y, 2NE);