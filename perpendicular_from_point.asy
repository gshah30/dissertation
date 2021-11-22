import geometry;
import setup;

pair O = (0,4);
pair C = (0,0);

pair A = (-6,0);
pair B = (9,0);

draw(A -- B);
draw(O -- C);

dot("$O$", O, 2N);
dot("$A$", A, 2W);
dot("$B$", B, 2E);

dot("$C$", C, 2S);

perpendicular(C, SW, A-B, size=6mm);