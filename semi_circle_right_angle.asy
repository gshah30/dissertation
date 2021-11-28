import geometry;
import setup;

unitsize(1cm);

pair A = (-5,0);
pair B = (5,0);

pair C = (5/2,5*sqrt(3)/2);

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2N);

draw(A -- C -- B);
draw(B -- A -- arc((0,0), 5, 0, 180));

// markangle(A, C, B, radius=20);
perpendicular(C, NE, A-C, size=6mm, p=light_pen);
