clear all; clc; clf;

f1 = @(x) exp(-x);
f2 = @(x) x.^2;

epsilon = 0.0001;
max_iterations = 100;
epsilon_achived = false;

delta = +Inf;
iter = 0;
xmin = 0;
xmax = 4;
xnew = 0;

while delta > epsilon && iter < max_iterations
  xnew = xmin + (xmax - xmin)/2;
  delta = abs( f1(xnew) - f2(xnew) );
  
  if sign( f1(xnew) - f2(xnew) ) == sign( f1(xmax) - f2(xmax) )
    xmax = xnew;
  else
    xmin = xnew;
  endif
  
  iter++;
endwhile

printf("x = %g, f1(x) = %g, f2(x) = %g, delta = %g, iter = %g\n", xnew, f1(xnew), f2(xnew), delta, iter);
plot( 0:0.001:4, f1(0:0.001:4), 0:0.001:4, f2(0:0.001:4), xnew, f1(xnew), 'ro')
