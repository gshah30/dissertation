import setup;

unitsize(1cm);

pair O = (0,0);
real r = 5;
path c = circle(O, r);

pair X = (-5,0);
pair Y = (5,0);

draw(c);
draw(X -- Y);

dot("$X$", X, 2W);
dot("$Y$", Y, 2E);
dot("$O$", O, 2N);