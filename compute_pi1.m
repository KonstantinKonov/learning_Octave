clear all; clc; clf;

n=1000000;

s1 = 0;
for i=1:n
  s1 += 1/(i^2);
endfor

p1 = sqrt(6*s1);

s2 = 0;
for i=0:n
  s2 += 1/( (4*i+1) * (4*i+3) );
endfor

p2 = 8 * s2;

printf("p1 = %.10f, p2 = %.10f\n", p1, p2);