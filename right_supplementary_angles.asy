import geometry;
import setup;

unitsize(1cm);

pair A = (-7,0);
pair B = (7,0);

pair O = (0,0);
pair P = (-2,7);
pair Q = (0,7);

dot("$A$", A, 2NW);
dot("$B$", B, 2NE);
draw(A -- B);

dot("$O$", O, 2S);
dot("$P$", P, 2NE);
dot("$Q$", Q, 2N);

draw(O -- P);
draw(O -- Q, light_pen);

markangle(A, O, P, radius=-42, n=1);
markangle(P, O, B, radius=-45, n=2);

perpendicular(O, SW, A-B, size=8mm, light_pen);
perpendicular(O, SE, A-B, size=8mm, light_pen);
