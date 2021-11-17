import setup;

unitsize(1cm);

pair A = (0,7);
pair B = (-3,0);
pair C = (3,0);

draw(A -- B, single_central_marker);
draw(B -- C);
draw(C -- A, single_central_marker);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);