import geometry;
import setup;

unitsize(1cm);

pair A = (-3,0);
pair B = (3,0);
pair C = (3,4);
pair D = (-3,4);

draw(A -- B);
draw(B -- C);
draw(C -- D);
draw(D -- A);

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2NE);
dot("$D$", D, 2NW);

perpendicular(A, SW, A-B, size=6mm);
perpendicular(B, SE, A-B, size=6mm);
perpendicular(C, NE, A-B, size=6mm);
perpendicular(D, NW, A-B, size=6mm);
