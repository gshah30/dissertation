import setup;

pair A = (-3,0);
pair B = (3,0);

pair C = (4,5);
pair D = (-5,4);

draw(A -- B);
draw(B -- C);
draw(C -- D);
draw(D -- A);

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2NE);
dot("$D$", D, 2SW);

markangle(D, A, B, radius=-30, n=1);
markangle(A, B, C, radius=-30, n=2);
markangle(B, C, D, radius=-30, n=3);
markangle(C, D, A, radius=-30, n=4);