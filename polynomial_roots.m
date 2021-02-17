clear all; clc; clf;

% s(t) = t^3 -6*t^2 + 9*t;
s_coeff = [1, -6, 9, 0];
s_roots = roots(s_coeff);

v_coeff = polyder(s_coeff);
v_roots = roots(v_coeff);

a_coeff = polyder(v_coeff);
a_roots = roots(a_coeff);

t = -20:0.1:20;
s = polyval(s_coeff, t);
v = polyval(v_coeff, t);
a = polyval(a_coeff, t);

subplot(1,3,1);
plot(t, s, s_roots, polyval(s_coeff, s_roots), 'ro')
title(polyout(s_coeff, 't'));

subplot(1,3,2);
plot(t, v, v_roots, polyval(v_coeff, v_roots), 'ro')
title(polyout(v_coeff, 't'));

subplot(1,3,3);
plot(t, a, a_roots, polyval(a_coeff, a_roots), 'ro')
title(polyout(a_coeff, 't'));