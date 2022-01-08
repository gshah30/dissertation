import setup;

fix_canvas(s=15);

point C = point(-7,0);
point D = point(7,0);
point A = point(-7,4);
point B = point(7,4);
point E = point(-7,-4);
point F = point(7,-4);

line l1 = line(A, true, B, true);
line l2 = line(C, true, D, true);
line l3 = line(E, true, F, true);

draw(l1, near_mid_path_arrow);
draw(l2, near_mid_path_arrow);
draw(l3, near_mid_path_arrow);

point P = point(0,6);
point Q = point(0,-6);

line transversal = line(P, true, Q, true);
draw(transversal);

point X = intersectionpoint(transversal, l1);
point Y = intersectionpoint(transversal, l2);
point Z = intersectionpoint(transversal, l3);

perpendicular(X.coordinates, SW, A.coordinates-B.coordinates, size=5mm);
perpendicular(Y.coordinates, SW, C.coordinates-D.coordinates, size=5mm, p=light_pen);
perpendicular(Z.coordinates, SW, E.coordinates-F.coordinates, size=5mm, p=light_pen);

gdot("A", A, 2N);
gdot("B", B, 2N);
gdot("C", C, 2S);
gdot("D", D, 2S);
gdot("E", E, 2S);
gdot("F", F, 2S);