x = 0:0.01:16;
f = @(x) (x - 2*floor(x/2)) .* (rem(x,2) <= 1) + (2 + 2*floor(x/2) - x) .* (abs(rem(x,2)) > 1);
plot(x, f(x))