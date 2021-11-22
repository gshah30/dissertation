import setup;

unitsize(1cm);

pair A = (0,9);
pair B = (-3,0);
pair C = (3,0);

pair E = (-5,-6);
pair F = (5,-6);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);
dot("$E$", E, 2SW);
dot("$F$", F, 2SE);

draw(A -- B, single_central_marker);
draw(B -- C);
draw(C -- A, single_central_marker);
draw(B -- E);
draw(C -- F);

markangle(E, B, C, radius=30, n=2, light_pen);
markangle(F, C, B, radius=-30, n=2, light_pen);
