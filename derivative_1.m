clear all; clc; clf;
f = @(x) (x.^2).^(1/3);
f_d = @(x) (2/3)*nthroot(1./x, 3);
i = -10:0.1:10;

f_deriv = diff(f(i))./diff(i);

plot(i, f(i), i, f_d(i), i(2:end), f_deriv, 'o')