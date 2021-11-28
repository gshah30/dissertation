unitsize(1cm);

draw(circle((0, 0), 5));
pair fixed_point = (3,0);

path chord1 = (-5,0) -- (5,0);
path chord2 = (3,4) -- (3,-4);
// path p = (3,0) -- (0,0) -- (0,4);
// draw(rotate(65, (3/2, 2)) * p);

path c1 = (-3,4) -- (4.85,-1.23);
path c2 = (-4.9,0.98) -- (4.99,-0.25);
path c3 = (-4.55,-2.06) -- (4.97,0.54);
path c4 = (-3.35,-3.71) -- (4.88,1.1);

pair m1 = (0.925,1.385);
pair m2 = (0.045,0.365);
pair m3 = (0.21,-0.76);
pair m4 = (0.765,-1.305);
// pair m0 = (0,0);

draw(chord1);
draw(chord2);
draw(c1);
draw(c2);
draw(c3);
draw(c4);

dot("$m1$", m1, 2N);
dot("$m2$", m2, 2S);
dot("$m3$", m3, 2W);
dot("$m4$", m4, 2E);
// dot("$m0$", m0, 2N);