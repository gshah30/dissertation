unitsize(1cm);

pair A = (2,8);
pair B = (-5,-1);
pair C = (6,-1);

pair O = (1/2, -1);

draw(A -- B);
draw(B -- C);
draw(C -- A);

draw(A -- O);
draw(O -- (0,-4));

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

dot("$O$", O, 2S);