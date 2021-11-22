import geometry;

import setup;

unitsize(1cm);

pair A = (3,3);
pair B = (-2,5);

pair C = (5,0);
pair D = (-1,6);

pair P = (1,6);
pair Q = (-4,8);

dot(A, invisible);
dot(B, invisible);

dot(C, invisible);
dot(D, invisible);

dot(P, invisible);
dot(Q, invisible);

line l1 = line(A, true, B, true);
line l2 = line(C, true, D, true);

line lp = line(P, true, Q, true);

draw(l1, mid_path_arrow);
draw(l2);
draw(lp, mid_path_arrow);