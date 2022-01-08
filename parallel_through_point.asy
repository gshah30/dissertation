import setup;

fix_canvas(s=20);
point A = origin;

line l = line(point(1,-1), true, point(2,0), true);
line lp = line(A, aTan(l.slope));

gdot("A", A, 2NW);
draw(l, parallel_marker(0.55));
draw(lp, parallel_marker(0.55));

