import geometry;
import setup;

unitsize(1cm);

pair A = (-3,0);
pair B = (3,0);
pair C = (5,4);
pair D = (-1,4);

draw(A -- B, single_central_marker);
draw(B -- C, double_central_marker);
draw(C -- D, single_central_marker);
draw(D -- A, double_central_marker);

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2NE);
dot("$D$", D, 2NW);

markangle(C, D, A, radius=-23);
markangle(C, B, A, radius=23);