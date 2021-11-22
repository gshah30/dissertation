import setup;

pair A = (-1,5);
pair B = (4,0);
pair C = (-6,0);

pair D = (0,3);

dot("$A$", A, 2N);
dot("$B$", B, 2SE);
dot("$C$", C, 2SW);

dot("$D$", D, 2N);

draw(A -- B);
draw(B -- C);
draw(C -- A);

draw(C -- D);
draw(B -- D);

// draw(D -- (-6,6), light_pen);
