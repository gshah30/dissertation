import setup;

fix_canvas();

point X = point(-4,0);
point Y = point(4,0);
line l = line(X, true, Y, true);

point P = point(-4,3);
point Q = point(4,3);

line l1 = line(P, true, X, true);
line l2 = line(Q, true, Y, true);

draw(l);
draw(l1, parallel_marker(0.22));
draw(l2, parallel_marker(0.22));

perpendicular(X.coordinates , SW, X.coordinates-Y.coordinates, size=8mm);
perpendicular(Y.coordinates, SW, X.coordinates-Y.coordinates, size=8mm);

gdot("P", P, 2W);
gdot("Q", Q, 2E);

gdot("X", X, 2SW);
gdot("Y", Y, 2SE);