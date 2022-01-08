import geometry;
import setup;

unitsize(1cm);

// extend the canvas
dot((-7,0), invisible);
dot((7,0), invisible);

// pair O = (0,0);
real r = 5;


// coordsys cs = cartesiansystem(O, (1,0), (0,1));
// coordsys cs = defaultcoordsys;
// currentcoordsys = defaultcoordsys;

// pair P = (-3,-4);
// pair Q = (3,-4);

// pair A1 = (-5,0);
// pair B1 = (5,0);

// pair A2 = (4,3);
// pair B2 = (-4,-3);

point O = point(0,0);

point P = point(-3,-4);
point Q = point(3,-4);

point A1 = point(-5,0);
point A2 = point(4,3);

point B1 = point(5,0);
point B2 = point(-4,-3);

dot("$O$", O, 2N);

dot("$P$", P, 2SE);
dot("$Q$", Q, 2SE);

dot("$A1$", A1, 2W);
dot("$B1$", B1, 2E);

dot("$A2$", A2, 2W);
dot("$B2$", B2, 2E);

line chord = line(P, true, Q, true);
circle c = circle(O, r);

line d1 = line(A1, false, B1, false);
line d2 = line(A2, false, B2, false);

draw(c);
draw(d1);
draw(d2);
draw(chord);

line pA1 = perpendicular(A1, chord);
line pA2 = perpendicular(A2, chord);
line pB1 = perpendicular(B1, chord);
line pB2 = perpendicular(B2, chord);

draw(A1.coordinates -- intersectionpoint(chord, pA1).coordinates);
draw(B1.coordinates -- intersectionpoint(chord, pB1).coordinates);
draw(A2.coordinates -- intersectionpoint(chord, pA2).coordinates);
draw(B2.coordinates -- intersectionpoint(chord, pB2).coordinates);

// draw(pA1);
// draw(pA2);
// draw(pB1);
// draw(pB2);
