import setup;

circle c1 = circle(origin,5);

pair A = (4,3);
pair B = (2,sqrt(21));

draw(origin.coordinates -- A, dashed, single_central_marker);
draw(origin.coordinates -- B, dashed, single_central_marker);

draw(c1);

gdot("O", origin, 2SW);
gdot("A", A, 2NE);
gdot("B", B, 2NE);