import geometry;
import setup;

pair O = (0,4);
pair Q = (-2,0);
pair R = (4,0);

pair C = (0,0);

pair A = (-6,0);
pair B = (9,0);

draw(C -- Q, p=white);
draw(C -- R, p=white);

draw(A -- B);
draw(O -- Q);
draw(O -- R);
draw(O -- C);

dot("$O$", O, 2N);
dot("$A$", A, 2W);
dot("$B$", B, 2E);

dot("$Q$", Q, 2S);
dot("$R$", R, 2S);
dot("$C$", C, 2S);

perpendicular(C, SW, A-B, size=6mm);
