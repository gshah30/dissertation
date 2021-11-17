import setup;
unitsize(1cm);

pair A = (-3,0);
pair B = (3,0);
pair C = (3,6);
pair D = (-3,6);

draw(A -- B);
draw(B -- C);
draw(C -- D);
draw(D -- A);

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2NE);
dot("$D$", D, 2NW);

draw(A -- C);
draw(B -- D);