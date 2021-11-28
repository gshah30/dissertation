unitsize(1cm);

draw(circle((0, 0), 5));
pair P = (7,0);

path c1 = P -- (1,sqrt(24));
path c2 = P -- (-2,sqrt(21));
path c3 = P -- (3,4);
path c4 = P -- (-4,3);

path cm = P -- (-5,0);

path c5 = P -- (1,-sqrt(24));
path c6 = P -- (-2,-sqrt(21));
path c7 = P -- (3,-4);
path c8 = P -- (-4,-3);

pair M1 = (4,sqrt(24)/2);
pair M2 = (5/2,sqrt(21)/2);
pair M3 = (5,2);
pair M4 = (3/2,3/2);

pair M = (-1,0);

pair M5 = (4,-sqrt(24)/2);
pair M6 = (5/2,-sqrt(21)/2);
pair M7 = (5,-2);
pair M8 = (3/2,-3/2);

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
