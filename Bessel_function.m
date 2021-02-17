clear all; clc; clf;

%bes = @(n, t) ( ((-1)^n)*(t.^(2*n)) )/( (2^(2*n)) * ((factorial(n))^2) );

x = -10:0.1:10;
subplot(1,2,1);
plot(x, besselj(false, x))

subplot(1,2,2);
%plot(x, bes(0, x));