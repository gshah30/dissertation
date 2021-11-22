import geometry;
import setup;

pair A = (-7,0);
pair B = (0,5);
pair C = (3,0);

pair X = (-4.5,-3.5);
pair Y = (2.5, 1.5);
// pair X = (7,0);

draw(A -- B);
draw(B -- C);
draw(C -- A);

// draw(C -- X);

dot("$A$", A, 2SW);
dot("$B$", B, 2N);
dot("$C$", C, 2SE);

// dot("$X$", X, 2E);

// markangle(X, C, B, radius=30);
markangle(A, B, C, radius=35, n=2);
markangle(B, A, C, radius=-35, n=1);

draw(A -- X, light_pen);
draw(B -- Y, light_pen);

perpendicular(B, NE, A-B, size=6mm, p=light_pen);
perpendicular(A, NW, A-B, size=6mm, p=light_pen);