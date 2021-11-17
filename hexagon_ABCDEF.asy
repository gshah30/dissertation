import setup;

unitsize(1cm);

pair A = (1,9);
pair B = (-8,7);
pair E = (5,-2);
pair C = (-7,-2);
pair D = (-1,-7);
pair F = (6,6);


draw(A -- B);
draw(B -- C);
draw(C -- D);
draw(D -- E);
draw(E -- F);
draw(F -- A);

dot("$A$", A, 2NE);
dot("$B$", B, 2NW);
dot("$C$", C, 2S);
dot("$D$", D, 2S);
dot("$E$", E, 2S);
dot("$F$", F, 2E);