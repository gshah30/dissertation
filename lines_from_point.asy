import geometry;
import setup;

pair O = (0,4);
pair projection1 = (-3,0);
pair projection2 = (3,0);

pair A = (-6,0);
pair B = (9,0);

draw(A -- B);
draw(O -- projection1);
draw(O -- projection2);

dot("$O$", O, 2N);
dot("$A$", A, 2W);
dot("$B$", B, 2E);
