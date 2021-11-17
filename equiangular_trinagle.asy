import setup;

unitsize(1cm);

pair A = (0,3*sqrt(3));
pair B = (-3,0);
pair C = (3,0);

draw(A -- B);
draw(B -- C);
draw(C -- A);

markangle(A, B, C, radius=-30, n=2);
markangle(A, C, B, radius=30, n=2);
markangle(B, A, C, radius=30, n=2);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);