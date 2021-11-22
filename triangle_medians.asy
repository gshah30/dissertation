unitsize(1cm);

pair A = (2,8);
pair B = (-5,-1);
pair C = (6,-1);

pair M1 = (1/2, -1);
pair M2 = (4,7/2);
pair M3 = (-3/2,7/2);

draw(A -- B);
draw(B -- C);
draw(C -- A);

draw(A -- M1);
draw(B -- M2);
draw(C -- M3);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

dot("$M1$", M1, 2S);
dot("$M2$", M2, 2NE);
dot("$M3$", M3, 2NW);
