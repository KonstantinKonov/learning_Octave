clear all; clc; clf;

subplot(2,3,1);
ezplot('y^4 - 4*y^2 - x^4 +9*x^2', [-4 4 -3 3])

subplot(2,3,2);
ezplot('x^4 + y^4 - 16', [-3 3 -3 3])

subplot(2,3,3);
ezplot('x^3 + y^3 - 6*x*y', [-5 5])

subplot(2,3,4);
ezplot('(x^2 - 1)*(x^2 - 4)*(x^2 - 9) - (y^2)*(y^2 - 4)*(y^2 - 9)', [-5 5])

subplot(2,3,5);
ezplot('cos(x - sin(y)) - sin(y - sin(x))', [-15 15])

subplot(2,3,6);
f = @(x,y) sin(x.*y) - sin(x) - sin(y);
ezplot(f, [-12 12], 1000)