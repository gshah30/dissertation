import setup;

unitsize(0.75cm);

point A = point(-6,0);
point B = point(0,0);

point X = point(-3,4);

draw(circle(X,5));

gdot("A", A, 2SW);
gdot("B", B, 2SE);

gdot("X", X, 2E);

draw(A -- B, single_central_marker);

draw(arc(X, 5, -aTan(3/4)-90, -90+aTan(3/4)), p=invisible, marker=single_light_central_marker);
draw(arc(X, 5, -90+aTan(3/4), 270-aTan(3/4)), p=invisible, marker=double_light_central_marker);

point P = point(7,0);
point Q = point(13,0);

point Y = point(10,4);

draw(circle(Y,5));


gdot("P", P, 2SW);
gdot("Q", Q, 2SE);


gdot("Y", Y, 2E);

draw(P -- Q, single_central_marker);
// draw(Q -- Y);

// markangle(P, Y, Q, radius=22, n=2);

draw(arc(Y, 5, -aTan(3/4)-90, -90+aTan(3/4)), invisible, marker=single_light_central_marker);
draw(arc(Y, 5, -90+aTan(3/4), 270-aTan(3/4)), p=invisible, marker=double_light_central_marker);
