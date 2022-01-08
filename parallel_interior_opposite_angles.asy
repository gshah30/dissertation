import setup;

fix_canvas(s=15);

point C = point(-7,0);
point D = point(7,0);
point A = point(-7,4);
point B = point(7,4);

line l1 = line(A, true, B, true);
line l2 = line(C, true, D, true);

draw(l1, near_mid_path_arrow);
draw(l2, near_mid_path_arrow);

point E = point(-2,6);
point F = point(1,-6);

line transversal = line(E, true, F, true);
draw(transversal);

point X = intersectionpoint(transversal, l1);
point Y = intersectionpoint(transversal, l2);

markangle(E, X, A, radius=28);
markangle(X, Y, C, radius=28);

// markangle(E, X, B, radius=-18, n=2);
// markangle(X, Y, D, radius=-18, n=2);

gdot("A", A, 2N);
gdot("B", B, 2N);
gdot("C", C, 2S);
gdot("D", D, 2S);
gdot("E", E, 2NE);
gdot("F", F, 2NE);