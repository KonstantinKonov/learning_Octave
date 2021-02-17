clear all; clc; clf;

f = @(n, x) x.^n;
n = 5;

s = 0;
x = -0.99:0.01:0.99;
for i = 0:n
  s += f(i, x);
endfor

plot( x, s, x, 1./(1-x) )