x = -20:0.1:20;
f = inline("2*x.^2-5*x+1");

pts_x = [-10, -5, 0, 1, 5, 10];

plot(x,f(x), 'b', pts_x, f(pts_x), 'ro');