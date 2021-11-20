import setup;

unitsize(1cm);

pair A = (0,9);
pair B = (-3,0);
pair C = (3,0);

pair O = (0,0);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

dot("$O$", O, 2S);

draw(A -- B, single_central_marker);
draw(B -- C);
draw(C -- A, single_central_marker);

draw(A -- O);
draw(B -- O, double_light_central_marker);
draw(C -- O, double_light_central_marker);

markangle(B, A, O, radius=35);
markangle(C, A, O, radius=-30);

markangle(A, B, C, radius=-30, n=2, p=light_pen);
markangle(A, C, B, radius=30, n=2, p=light_pen);
