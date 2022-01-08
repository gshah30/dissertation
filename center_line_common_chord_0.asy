import setup;

unitsize(0.4cm);

fix_canvas(s=15);

circle c1 = circle(point(-4,0), 5);
circle c2 = circle(point(12,0), 13);

point[] c1_c2_ips = intersectionpoints(c1, c2);
line common_chord = segment(c1_c2_ips[0], c1_c2_ips[1]);

draw(c1);
draw(c2);
draw(common_chord);

gdot("A", c1.C, 2NW);
gdot("B", c2.C, 2NE);

point C = c1_c2_ips[1];
point D = c1_c2_ips[0];

gdot("C", C, 4N);
gdot("D", D, 4S);

segment center_line = segment(c1.C, c2.C);
draw(center_line);

point M = intersectionpoint(center_line, common_chord);
gdot("M", M, 2NE);

// draw(C -- M, invisible, single_light_central_marker);
// draw(D -- M, invisible, single_light_central_marker);