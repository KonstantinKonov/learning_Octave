clear all; clc; clf;

f = @(x) exp(x)./(1+x.^2);
g = @(x) exp(x) .* ( ( (x-1)./(1+x.^2) ).^2 );

i = -3:0.01:3;

f_d = diff(f(i))./diff(i);

plot(i, f(i), i, g(i), i(2:end), f_d)