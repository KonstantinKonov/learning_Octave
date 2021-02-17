function result = midpoint_intgr(f, a, b, n)
  delta_x = (b-a)/n;
  x = linspace(a + delta_x/2, b - delta_x/2, n);
  result = delta_x * sum(f(x));
endfunction
