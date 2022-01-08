import setup;

point A = point(-3,0);
point B = point(3,0);

point O = point(0,4);

draw(circle(O,5));

line chord = line(A, false, B, false);
draw(chord);

line perp_bisector = line((A+B)/2, right_angle);

gdot("A", A, 2SW);
gdot("B", B, 2SE);

draw(perp_bisector);

gdot("O", O, 2E);

perpendicular((A.coordinates+B.coordinates)/2, SW, A.coordinates-B.coordinates, size=8mm);

draw(A -- origin, invisible, single_light_central_marker);
draw(B -- origin, invisible, single_light_central_marker);