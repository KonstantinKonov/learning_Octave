x = -5:0.01:5;
f = @(x) (1-x) .* (x <= -1) + (x.^2) .* (x > -1);
plot(x, f(x), '.')