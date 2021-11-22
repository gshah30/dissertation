import setup;

unitsize(1cm);

pair A = (0,sqrt(27));
pair B = (-3,0);
pair C = (3,0);

pair L = (-3/2,sqrt(27)/2);
pair M = (0,0);
pair N = (3/2,sqrt(27)/2);

draw(A -- B, triple_central_marker);
draw(B -- C, triple_central_marker);
draw(C -- A, triple_central_marker);

draw(L -- M, single_light_central_marker);
draw(M -- N, single_light_central_marker);
draw(N -- L, single_light_central_marker);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

dot("$L$", L, 2NW);
dot("$M$", M, 2S);
dot("$N$", N, 2NE);