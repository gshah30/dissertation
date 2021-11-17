unitsize(1cm);

pair A = (4,4);
pair B = (-6,7);
pair E = (5,-2);
pair C = (-7,-2);
pair D = (-1,-7);

draw(A -- B);
draw(B -- C);
draw(C -- D);
draw(D -- E);
draw(E -- A);

dot("$A$", A, 2NE);
dot("$B$", B, 2NW);
dot("$C$", C, 2S);
dot("$D$", D, 2S);
dot("$E$", E, 2S);