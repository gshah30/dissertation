import geometry;
import setup;

unitsize(1cm);

pair A = (-7,2);
pair B = (7,-2);

pair C = (6,2);
pair D = (-6,-2);

pair O = (0,0);
pair P = (-2,6);
pair Q = (2,-6);

dot("$A$", A, 2NW);
dot("$B$", B, 2NE);
draw(A -- B);

dot("$C$", C, 2NE);
dot("$D$", D, 2NW);
draw(C -- D);

dot("$O$", O, 2NE);
dot("$P$", P, 2NE);
dot("$Q$", Q, 2SE);
draw(O -- P, light_pen);
draw(O -- Q, light_pen);

markangle(A, O, C, radius=-38, n=1);
markangle(A, O, D, radius=42, n=2);

markangle(B, O, D, radius=-38, n=1);
markangle(B, O, C, radius=42, n=2);

perpendicular(O, NW, C-D, size=8mm, light_pen);
perpendicular(O, NE, C-D, size=8mm, light_pen);
perpendicular(O, SW, C-D, size=8mm, light_pen);
perpendicular(O, SE, C-D, size=8mm, light_pen);
