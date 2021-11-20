import setup;

unitsize(1cm);

pair A = (0,9);
pair B = (-3,0);
pair C = (3,0);

pair O = (0,0);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

draw(A -- B, single_central_marker);
draw(B -- C, two_single_marker);
draw(C -- A, single_central_marker);

draw(A -- O);

markangle(B, A, O, radius=30, n=2, p=light_pen);
markangle(O, A, C, radius=35, n=2, p=light_pen);