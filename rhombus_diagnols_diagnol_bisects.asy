import setup;

unitsize(1cm);

pair A = (-3,0);
pair C = (3,0);
pair B = (0,4);
pair D = (0,-4);

draw(A -- B, single_central_marker);
draw(B -- C, single_central_marker);
draw(C -- D, single_central_marker);
draw(D -- A, single_central_marker);

draw(A -- C);
draw(B -- D);

dot("$A$", A, 2W);
dot("$B$", B, 2N);
dot("$C$", C, 2E);
dot("$D$", D, 2S);

markangle(B, A, C, radius=-28, n=2);
markangle(C, A, D, radius=-23, n=2);

markangle(B, C, A, radius=28, n=1);
markangle(A, C, D, radius=23, n=1);

// markangle(B, C, D, radius=-35, n=2);