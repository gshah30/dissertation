import setup;

unitsize(1cm);

pair O = (0,0);
real r = 5;
path c = circle(O, r);

pair P = (3,0);
pair X = (3,4);
pair Y = (3,-4);

draw(c);
draw(X -- Y);

dot("$X$", X, 2N);
dot("$Y$", Y, 2S);
dot("$P$", P, 2E);