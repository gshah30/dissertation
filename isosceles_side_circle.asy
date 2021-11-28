import geometry;
import setup;

unitsize(1cm);

pair A = (-3,0);
pair B = (3,0);
pair C = (0,4);

path c = circle((B+C)/2, length(segment(point(B, 1.0), point(C, 1.0)))/2);
draw(c);

path AB = A -- B;
draw(AB -- C -- cycle);

pair X = intersectionpoint(AB, c);

dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$C$", C, 2N);

dot("$X$", X, 2S);

draw(A -- X, p=invisible, single_light_central_marker);
draw(B -- X, p=invisible, single_light_central_marker);
