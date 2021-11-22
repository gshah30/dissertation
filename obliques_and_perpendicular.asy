import geometry;
import setup;

pair O = (0,4);
pair P = (-3,0);
pair Q = (3,0);

pair C = (0,0);

pair A = (-6,0);
pair B = (9,0);

draw(C -- P, p=white, single_central_marker);
draw(C -- Q, p=white, single_central_marker);

draw(A -- B);
draw(O -- P, double_light_central_marker);
draw(O -- Q, double_light_central_marker);
draw(O -- C);

dot("$O$", O, 2N);
dot("$A$", A, 2W);
dot("$B$", B, 2E);

dot("$P$", P, 2S);
dot("$Q$", Q, 2S);
dot("$C$", C, 2S);

perpendicular(C, SW, A-B, size=6mm);
