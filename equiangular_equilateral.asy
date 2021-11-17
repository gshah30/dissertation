import setup;

unitsize(1cm);

pair A = (0,3*sqrt(3));
pair B = (-3,0);
pair C = (3,0);

draw(A -- B, single_light_central_marker);
draw(B -- C, single_light_central_marker);
draw(C -- A, single_light_central_marker);

markangle(A, B, C, radius=-25, n=2);
markangle(A, C, B, radius=25, n=2);
markangle(B, A, C, radius=25, n=2);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);