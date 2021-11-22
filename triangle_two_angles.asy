import geometry;
import setup;

pair A = (-7,0);
pair B = (0,5);
pair C = (3,0);

draw(A -- B);
draw(B -- C);
draw(C -- A);

dot("$A$", A, 2SW);
dot("$B$", B, 2N);
dot("$C$", C, 2SE);

markangle(A, B, C, radius=30, n=2);
markangle(B, A, C, radius=-32, n=1);

// draw(A -- X, light_pen);
// draw(B -- Y, light_pen);

// perpendicular(B, NE, A-B, size=6mm, p=light_pen);
// perpendicular(A, NW, A-B, size=6mm, p=light_pen);