import setup;

unitsize(1cm);

pair A = (0,7);
pair B = (-3,0);
pair C = (3,0);

pair L = (-3/2,7/2);
pair M = (0,0);
pair N = (3/2,7/2);

draw(A -- B, triple_central_marker);
draw(B -- C);
draw(C -- A, triple_central_marker);

// draw(L -- M, single_light_central_marker, p=light_pen);
// draw(M -- N, single_light_central_marker, p=light_pen);
// draw(N -- L);

draw(L -- M);
draw(N -- M);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

dot("$L$", L, 2NW);
dot("$M$", M, 2S);
dot("$N$", N, 2NE);

markangle(A, L, M, radius=-35);
markangle(A, N, M, radius=35);