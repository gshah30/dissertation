import setup;
import geometry;

unitsize(1cm);

pair O = (0,0);

pair A = (-5*sqrt(3)/2,-5/2);
pair B = (5*sqrt(3)/2,-5/2);

pair C = (5/2,5*sqrt(3)/2);

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2NE);
dot("$O$", O, 2NE);

draw(A -- O -- B);
draw(A -- C -- B);
draw(B -- A -- arc((0,0), 5, -30, 210));

markangle(A, C, B, radius=20);
markangle(A, O, B, radius=20, n=2);