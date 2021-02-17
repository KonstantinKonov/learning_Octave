function intgr = trapezioidal(f, a, b, n)
  delta_x = (b - a)/n;
  sum = f(a)/2 + f(b)/2;
  for i = 1:(n-1)
    sum += f(a + i*delta_x);
  endfor
  intgr = sum * delta_x;
  
endfunction
