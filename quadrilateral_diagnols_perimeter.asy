import setup;

unitsize(1cm);

pair A = (4,4);
pair B = (-6,7);
pair D = (1,-5);
pair C = (-5,-6);

draw(A -- B);
draw(B -- C);
draw(C -- D);
draw(D -- A);

draw(A -- C);
draw(B -- D);

dot("$A$", A, 2NE);
dot("$B$", B, 2NW);
dot("$C$", C, 2S);
dot("$D$", D, 2S);