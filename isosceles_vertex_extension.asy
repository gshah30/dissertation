import setup;

unitsize(1cm);

pair A = (0,9);
pair B = (-3,0);
pair C = (3,0);

pair E = (2,15);
pair F = (-2,15);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);
dot("$E$", E, 2SW);
dot("$F$", F, 2SE);

draw(A -- B, single_central_marker);
draw(B -- C);
draw(C -- A, single_central_marker);

draw(A -- E);
draw(A -- F);

draw(B -- F, double_light_central_marker);
draw(C -- E, double_light_central_marker);

markangle(A, B, C, radius=-25, n=2);
markangle(A, C, B, radius=25, n=2);

// markangle(E, B, C, radius=34, n=1);
// markangle(F, C, B, radius=-34, n=1);