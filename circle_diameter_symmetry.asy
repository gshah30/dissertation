import setup;

point P = point(-3,0);

point X = point(0,4);
real r = 5;
circle c = circle(X, r);

point A = point(0,9);
point B = point(0,-1);
line l = line(A, false, B, false);
draw(c);
draw(l);

gdot("A", A, 2N);
gdot("B", B, 2S);
gdot("P", P, 2SW);

point Q = point(3,0);
gdot("$Q$", Q, 2SE, light_pen+linewidth(4.0));

line Pp = perpendicular(P, l);
// line Qp = perpendicular(Q, l);

draw(Pp, dashed);
// draw(Qp, dashed);

point Z = intersectionpoint(Pp, l);

perpendicular(Z, SW, P.coordinates-Z.coordinates, size=6mm, light_pen);
perpendicular(Z, SE, P.coordinates-Z.coordinates, size=6mm, light_pen);
