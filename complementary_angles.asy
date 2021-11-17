import geometry;
import setup;

unitsize(1cm);

pair A = (7,0);
pair B = (0,7);

pair O = (0,0);
pair P = (4*sqrt(3),4);

dot("$A$", A, 2NW);
dot("$B$", B, 2NE);

draw(O -- P);
draw(O -- B);
draw(O -- A);

dot("$O$", O, 2NE);
dot("$P$", P, 2NE);

perpendicular(O, SW, O-A, size=8mm, light_pen);
markangle(A, O, P, radius=37, n=1);
markangle(P, O, B, radius=40, n=2);
