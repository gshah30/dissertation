import setup;

unitsize(1cm);

pair A = (0,7);
pair B = (-3,0);
pair C = (3,0);

pair M = (0,0);

draw(A -- B, double_central_marker);
draw(B -- C, two_triple_light_marker);
draw(C -- A, double_central_marker);

draw(A -- M);
markangle(B, A, M, n=2, radius=35);
markangle(M, A, C, n=2, radius=30);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);
dot("$M$", M, 2S);