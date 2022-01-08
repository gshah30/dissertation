import setup;

fix_canvas(s=20);
point A = origin;

line l1 = line(point(1,-2), true, point(2,-1), true);
line l2 = line(point(-1,2), true, point(0,3), true);
line lp = line(origin, true, point(1,1), true);

// gdot("A", A, 2NW);
draw(l1, parallel_marker(0.45));
draw(lp, parallel_marker(0.45));

draw(l2, parallel_marker(0.35));
draw(lp, parallel_marker(0.35));

draw(l1, parallel_marker(0.65));
draw(l2, parallel_marker(0.65));
