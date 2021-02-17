clear all; clc; clf;

f = @(x) x.^2;
[area, ierror, nfneval] = quad(f, -1, 1);

x = -1:0.01:1;
plot(x, f(x))