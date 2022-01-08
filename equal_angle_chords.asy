import setup;

point O = point(0,0);
real r = 5;

circle c = circle(O,r);

point P = point(-2,-sqrt(21));
point Q = point(sqrt(21),-2);

point R = point(sqrt(21),2);
point S = point(2,-sqrt(21));

line chord1 = line(P, false, Q, false);
line chord2 = line(R, false, S, false);

draw(chord1);
draw(chord2);
draw(c);

point X = intersectionpoint(chord1, chord2);
dot("$X$", X, 2SE);

line center_to_chord_intersection = line(O, false, X, false);

draw(center_to_chord_intersection);

// draw(P.coordinates -- X.coordinates, invisible, double_light_central_marker);
// draw(Q.coordinates -- X.coordinates, invisible, single_light_central_marker);

// draw(R.coordinates -- X.coordinates, invisible, double_light_central_marker);
// draw(S.coordinates -- X.coordinates, invisible, single_light_central_marker);

dot("$O$", O.coordinates, align=2NW);

dot("$P$", P.coordinates, align=2SW);
dot("$Q$", Q.coordinates, align=2E);
dot("$R$", R.coordinates, align=2NE);
dot("$S$", S.coordinates, align=2(0,-1));

markangle(R, X, O, radius=25);
markangle(P, X, O, radius=-20);