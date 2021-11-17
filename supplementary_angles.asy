import geometry;
import setup;

unitsize(1cm);

pair A = (-7,0);
pair B = (7,0);

pair O = (0,0);
pair P = (-2,7);

dot("$A$", A, 2NW);
dot("$B$", B, 2NE);
draw(A -- B);

dot("$O$", O, 2S);
dot("$P$", P, 2NE);
draw(O -- P, light_pen);

markangle(A, O, P, radius=-38, n=1);
markangle(P, O, B, radius=-42, n=2);
markangle(A, O, B, radius=-25, n=1, light_pen);
