import geometry;
import setup;

unitsize(1cm);

pair A = (-3,-3);
pair B = (3,-3);
pair C = (3,3);
pair D = (-3,3);

draw(A -- B, single_central_marker);
draw(B -- C, single_central_marker);
draw(C -- D, single_central_marker);
draw(D -- A, single_central_marker);

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2NE);
dot("$D$", D, 2NW);

perpendicular(A, SW, A-B, size=6mm);
perpendicular(B, SE, A-B, size=6mm);
perpendicular(C, NE, A-B, size=6mm);
perpendicular(D, NW, A-B, size=6mm);
