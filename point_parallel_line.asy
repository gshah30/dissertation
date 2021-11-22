import geometry;

import setup;

unitsize(1cm);

pair A = (3,3);
pair B = (-2,5);

pair P = (1,6);
pair Q = (-4,8);

dot(A, invisible);
dot("$B$", B, 2S);

dot(P, invisible);
dot(Q, invisible);

line l1 = line(A, true, B, true);

line lp = line(P, true, Q, true);

draw(l1, mid_path_arrow);
draw(lp, mid_path_arrow);