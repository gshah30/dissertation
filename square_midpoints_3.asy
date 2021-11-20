import setup;

unitsize(1cm);

pair B = (-3,0);
pair M = (0,0);
pair C = (3,0);
pair N = (3,3);
pair D = (3,6);
pair L = (-3,3);
pair A = (-3,6);

draw(A -- B);
draw(B -- C);
draw(C -- D);
draw(D -- A);

dot("$A$", A, 2NW);
dot("$L$", L, 2W);
dot("$B$", B, 2SW);
dot("$M$", M, 2S);
dot("$C$", C, 2SE);
dot("$D$", D, 2NE);
dot("$N$", N, 2E);


draw(A -- N, single_light_central_marker, p=light_pen);
draw(A -- M, single_light_central_marker, p=light_pen);