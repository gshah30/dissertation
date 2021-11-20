import geometry;
import setup;

unitsize(1cm);

pair A = (-3,0);
pair C = (3,0);
pair B = (0,4);
pair D = (0,-4);

pair O = (0,0);

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

perpendicular(O, SW, O-C, size=6mm, p=light_pen);
perpendicular(O, SE, O-C, size=6mm, p=light_pen);
perpendicular(O, NW, O-C, size=6mm, p=light_pen);
perpendicular(O, NE, O-C, size=6mm, p=light_pen);
