import setup;

fix_canvas(s=15);

point A = point(5,0);
point B = point(-3,4);
point C = point(-3,-4);

circle c = circle(A, B, C);

draw(c);

draw(A -- B);
draw(A -- C);
draw(line(A, true, origin, true));

dot("$A$", A, 2NE);
dot("$B$", B, 2NW);
dot("$C$", C, 2SW);

dot("$O$", origin, 2N, light_pen);
markangle(B, A, origin, radius=25, n=2);
markangle(C, A, origin, radius=-23, n=2);