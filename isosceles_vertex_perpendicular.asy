import geometry;
import setup;

unitsize(1cm);

pair A = (0,7);
pair B = (-3,0);
pair C = (3,0);

pair O = (0,0);

draw(A -- B, double_central_marker);
draw(B -- C, two_single_marker);
draw(C -- A, double_central_marker);

draw(A -- O);

perpendicular(O, SW, O-C, size=6mm, p=light_pen);
perpendicular(O, SE, O-C, size=6mm, p=light_pen);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);
dot("$O$", O, 2S);