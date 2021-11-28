unitsize(1cm);

draw(circle((3/2, 2), 5/2));
path p = (3,0) -- (0,0) -- (0,4);
draw(rotate(65, (3/2, 2)) * p);