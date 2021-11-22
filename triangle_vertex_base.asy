import setup;

pair A = (1,8);
pair B = (-9,-1);
pair C = (6,-1);

pair O = (7/2, -1);

draw(A -- B);
draw(B -- C);
draw(C -- A);

draw(A -- O);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

// dot("$O$", O, 2S);
