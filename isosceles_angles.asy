import setup;

unitsize(1cm);

pair A = (0,9);
pair B = (-3,0);
pair C = (3,0);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

draw(A -- B, single_central_marker);
draw(B -- C);
draw(C -- A, single_central_marker);

markangle(A, B, C, radius=-30, n=2);
markangle(A, C, B, radius=30, n=2);