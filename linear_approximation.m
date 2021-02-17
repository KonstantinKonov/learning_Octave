clear all; clc; clf;

% sqrt(x+3)
f = @(x) sqrt(x+3);
fd = @(x) 1./(2*sqrt(x+3)); 
fa = @(x) f(1) + fd(1)*(x-1);

t = -3:0.1:10;
plot(t, f(t), t, fd(t), t, fa(t))