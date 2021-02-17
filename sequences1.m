clear all; clc; clf;

n = 1:1:100;
seq1 = n./(n + 1);
seq2 = ((-1).^n).*(n + 1)./(3.^n);
seq3 = sqrt(n(3:end) -3);
seq4 = cos((pi/6)*n);

fib = 1;
for i = 1:1:10
  fib *= i;
endfor

subplot(1,2,1)
plot(n, seq1, '.', n, seq2, 'ro', n(3:end), seq3, 'kx', n, seq4, 'gx')

subplot(1,2,2)
plot(seq1, zeros(100), 'x')
