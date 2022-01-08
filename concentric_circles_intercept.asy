import setup;

fix_canvas(s=15);

circle c1 = circle(origin,5);
circle c2 = circle(origin,7);

draw(c1);
draw(c2);

line intercept = line(point(-3,3), point(3,3));
draw(intercept);

point[] c1_line_intersection = intersectionpoints(intercept, c1);
point[] c2_line_intersection = intersectionpoints(intercept, c2);

point Q = c1_line_intersection[0];
point R = c1_line_intersection[1];

point P = c2_line_intersection[0];
point S = c2_line_intersection[1];

gdot("P", P, 2W);
gdot("Q", Q, 2W);
gdot("R", R, 2W);
gdot("S", S, 2E);

draw(P -- Q, single_light_central_marker);
draw(R -- S, single_light_central_marker);

gdot("O", origin, 2N);