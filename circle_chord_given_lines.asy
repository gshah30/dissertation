import setup;

fix_canvas(15, 15, -15, -15);

point O = point(0,0);
real r = 5;

circle c = circle(O,r);

real slope = 1;
real y_intercept = 9;
line le = line(point(-3,-9), false, point(3,-9), false);
line lp = line(slope, y_intercept);

// real inclination = aSin(slope);

draw(le);
draw(lp);
draw(c);

circle tmp_circle = circle(O,4);
line tmp_line = line(aTan(-1/slope),O);

// draw(tmp_circle);
// draw(tmp_line);

point[] cms = intersectionpoints(tmp_line, tmp_circle);
point chord_midpoint = cms[0];

line chord = line(aTan(slope),chord_midpoint);
// draw(chord);

point[] ceps = intersectionpoints(chord, c);

draw(ceps[0].coordinates -- ceps[1].coordinates);