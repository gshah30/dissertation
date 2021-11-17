import geometry;

import setup;

unitsize(1cm);

pair A = (0,7);
pair B = (-3,0);
pair C = (3,0);

pair canvas_spreader_point_1 = (-7, 0);
pair canvas_spreader_point_2 = (7, 0);

line l1 = line(A, false, B, false);
line l2 = line(B, true, C, true);
line l3 = line(C, false, A, false);

// triangle t = triangle(l1, l2, l3);
draw(l1);
draw(l2);
draw(l3);

// draw(t);
dot("$A$", A, 2N);
dot("$B$", B, 2S);
dot("$C$", C, 2S);

dot(canvas_spreader_point_1);
dot(canvas_spreader_point_2);

markangle(A, B, C, radius=-27, n=2);
markangle(A, C, B, radius=27, n=2);

markangle(A, B, canvas_spreader_point_1, radius=33, light_pen);
markangle(A, C, canvas_spreader_point_2, radius=-33, light_pen);