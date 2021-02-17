clear all; clc; clf;

n = 100;
m = 10;
r = 10*rand(1, n);
a = zeros(1, m);
aa = zeros(1, m);
for j = 1:m
  for i = 1:n
    if r(i) >= (j-1) && r(i) < j
      a(j) = a(j) + r(i);
      aa(j)++;
    endif
  endfor
endfor

subplot(1,2,1);
plot(1:n, r, 'o')
subplot(1,2,2);
bar(1:m, aa);
axis( [ 0 11 0 20 ] );