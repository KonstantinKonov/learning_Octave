clear all;clc;clf;

f1 = @(x) exp(x)/2;
f2 = @(x) exp(-x)/2;
f3 = @(x) (f1(x) + f2(x));
f4 = @(x) (f1(x) - f2(x));

x = -2:0.01:2;
subplot(1,3,1);
plot(x, f1(x), x, -f2(x), x, f4(x))

% hyperbola
subplot(1,3,2);
ezplot('x^2-y^2-1', [-5 5])

% hyperbola (parametric)
subplot(1,3,3);
ezplot( @(x) cosh(x).^2 - sinh(x).^2 - 1)