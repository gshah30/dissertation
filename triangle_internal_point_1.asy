import setup;

pair A = (2,5);
pair B = (4,0);
pair C = (-6,0);

pair X = (1,3);

dot("$A$", A, 2N);
dot("$B$", B, 2SE);
dot("$C$", C, 2SW);

dot("$X$", X, 2N);

draw(A -- B);
draw(B -- C);
draw(C -- A);

draw(A -- X);
draw(C -- X);
draw(B -- X);

// draw(X -- (-6,6), light_pen);
