unitsize(1cm);

pair A = (1,8);
pair B = (1,-2);
pair C = (6,-1);

pair M = (7/2, -3/2);

draw(A -- B);
draw(B -- C);
draw(C -- A);

draw(A -- M);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

dot("$M$", M, 2S);