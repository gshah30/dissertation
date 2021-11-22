import setup;

pair C = (-6,0);
pair A = (0,5);
pair B = (4,0);

pair D = (-1,3);

dot("$A$", A, 2N);
dot("$B$", B, 2SE);
dot("$C$", C, 2SW);

dot("$D$", D, 2N);

draw(A -- B);
draw(B -- C);
draw(C -- A);

draw(B -- D);
draw(C -- D);

draw(A -- D -- (-3,-1), light_pen);
