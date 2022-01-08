import setup;

circle c1 = circle(origin,5);

draw(origin.coordinates -- (4,3), dashed);
draw(origin.coordinates -- (2,sqrt(21)), dashed);

draw(c1);

gdot("O", origin, 2N);