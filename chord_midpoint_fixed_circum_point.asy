unitsize(1cm);

draw(circle((0, 0), 5));
pair fixed_point = (5,0);

path c1 = (5,0) -- (1,sqrt(24));
path c2 = (5,0) -- (-2,sqrt(21));
path c3 = (5,0) -- (3,4);
path c4 = (5,0) -- (-4,3);

path cm = (5,0) -- (-5,0);

path c5 = (5,0) -- (1,-sqrt(24));
path c6 = (5,0) -- (-2,-sqrt(21));
path c7 = (5,0) -- (3,-4);
path c8 = (5,0) -- (-4,-3);

pair M1 = (3,sqrt(24)/2);
pair M2 = (3/2,sqrt(21)/2);
pair M3 = (4,2);
pair M4 = (1/2,3/2);

pair M = (0,0);

pair M5 = (3,-sqrt(24)/2);
pair M6 = (3/2,-sqrt(21)/2);
pair M7 = (4,-2);
pair M8 = (1/2,-3/2);

draw(c1);
draw(c2);
draw(c3);
draw(c4);

draw(cm);

draw(c5);
draw(c6);
draw(c7);
draw(c8);


dot("$M1$", M1, 2N);
dot("$M2$", M2, 2S);
dot("$M3$", M3, 2W);
dot("$M4$", M4, 2E);

dot("$M5$", M5, 2N);
dot("$M6$", M6, 2S);
dot("$M7$", M7, 2W);
dot("$M8$", M8, 2E);

dot("$M$", M, 2N);