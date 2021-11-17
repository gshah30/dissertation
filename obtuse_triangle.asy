import geometry;

unitsize(1cm);

pair A = (-4,8);
pair B = (0,0);
pair C = (6,0);

draw(A -- B);
draw(B -- C);
draw(C -- A);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

markangle(A, B, C, radius=-28);