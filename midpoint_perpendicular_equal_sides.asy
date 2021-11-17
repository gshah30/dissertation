import setup;
unitsize(1cm);

pair A = (-6, 0);
pair B = (6, 0);
pair O = (0,0);

pair C = (0,10);
pair P = (0,7);

draw(A -- B);
dot("$A$", A, 2SW);
dot("$B$", B, 2SE);
dot("$O$", O, 2S);

draw(O -- C);
draw(P -- A, single_light_central_marker, p=light_pen);
draw(P -- B, single_light_central_marker, p=light_pen);