import geometry;
import setup;

pair A = (0,7);
pair B = (-3,0);
pair C = (5,0);

pair X = (-7,0);
pair Y = (11,0);

dot("$A$", A, 2N);
dot("$B$", B, 2SW);
dot("$C$", C, 2SE);

draw(A -- B);
draw(B -- C);
draw(C -- A);

markangle(X, B, A, radius=-30);
markangle(Y, C, A, radius=30);

draw(B -- X);
draw(C -- Y);

pair P = (-3,5);
pair Q = (5,5);

draw(B -- P, light_pen);
draw(C -- Q, light_pen);

perpendicular(B, SE, B-C, size=6mm, p=light_pen);
perpendicular(C, SW, B-C, size=6mm, p=light_pen);