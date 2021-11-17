import setup;

unitsize(1cm);

pair A = (0,3*sqrt(3));
pair B = (-3,0);
pair C = (3,0);

draw(A -- B, single_central_marker);
draw(B -- C, single_central_marker);
draw(C -- A, single_central_marker);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

markangle(A, B, C, radius=-30, n=2, p=light_pen);
markangle(A, C, B, radius=30, n=2, p=light_pen);
markangle(B, A, C, radius=30, n=2, p=light_pen);