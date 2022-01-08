import setup;

point A = point(-3,0);
point B = point(3,0);

point O = point(0,4);

draw(arc(O, 5, -90+aTan(3/4), 270-aTan(3/4)));
draw(circle(O,5), dashed);
// draw(line(A, false, B, false));

gdot("A", A, 2SW);
gdot("B", B, 2SE);