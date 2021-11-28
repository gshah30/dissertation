import setup;
import geometry;

unitsize(0.25cm);

pair C1 = (-4,0);
real r1 = 5;

pair C2 = (12,0);
real r2 = 13;

path c1 = circle(C1, r1);
path c2 = circle(C2, r2);

path clipper = arc(C1, r1, 90, 270) -- arc(C2, r2,-135, 135) -- cycle;

draw(c1);
draw(c2);

pair[] ps = intersectionpoints(c1, c2);
pair P = ps[0];
pair Q = ps[1];

real angle_with_x_axis = 12;
line l1 = line(P, angle_with_x_axis);
line l2 = line(Q, angle_with_x_axis);

draw(l1, single_central_marker, arrow=near_end_path_arrow);
draw(l2, single_central_marker, arrow=near_end_path_arrow);

clip(clipper);