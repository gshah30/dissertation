import setup;

unitsize(1cm);

pair A = (0,9);
pair B = (-3,0);
pair C = (3,0);
pair D = (0,-5);

dot("$A$", A, 2N);
dot("$B$", B, 2W);
dot("$C$", C, 2E);
dot("$D$", D, 2S);

draw(B -- C);
draw(A -- B, single_central_marker);
draw(C -- A, single_central_marker);
draw(D -- B, double_central_marker);
draw(D -- C, double_central_marker);

draw(A -- D);

markangle(B, A, D, radius=30, p=light_pen, n=2);
markangle(D, A, C, radius=26, p=light_pen, n=2);

markangle(B, D, A, radius=-30, p=light_pen);
markangle(A, D, C, radius=-26, p=light_pen);

// markangle(A, B, D, radius=-30, n=2, p=light_pen);
// markangle(A, C, D, radius=30, n=2, p=light_pen);
