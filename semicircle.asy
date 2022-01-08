import setup;

// circle c1 = circle(origin,5);
draw((-5,0) -- (5,0) -- arc(origin.coordinates, 5, 0, 180));
gdot("O", origin, 2N);