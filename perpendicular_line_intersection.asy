import geometry;
import setup;

unitsize(1cm);

pair A = (-7,0);
pair B = (7,0);

pair C = (0,6);
pair D = (0,-6);

pair O = (0,0);

dot("$A$", A, 2NE);
dot("$B$", B, 2NE);
draw(A -- B);

dot("$C$", C, 2NE);
dot("$D$", D, 2NE);
draw(C -- D);

dot("$O$", O, 2NE);

perpendicular(O, NW, A-B, size=8mm, light_pen);
perpendicular(O, NE, A-B, size=8mm, light_pen);
perpendicular(O, SW, A-B, size=8mm, light_pen);
perpendicular(O, SE, A-B, size=8mm);
