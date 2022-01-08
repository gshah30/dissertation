import setup;

fix_canvas(15,15,-15,-15);

real r = 5;
circle c = circle(origin,r);

point O = origin;

point A = point(3,4);
point B = point(-4,-3);
point C = point(5,0);

draw(O -- A.coordinates, dashed, single_central_marker);
draw(O -- B.coordinates, dashed, single_central_marker);
draw(O -- C.coordinates, dashed, single_central_marker);

draw(c);
dot("$O$", O, 2NW);
dot("$A$", A, 2NE);
dot("$B$", B, 2SW);
dot("$C$", C, 2E);