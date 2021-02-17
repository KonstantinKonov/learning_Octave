function result = MonteCarlo(f, g, x0, x1, y0, y1, n)
  x = x0 + (x1 - x0) * rand(n, 1);
  y = y0 + (y1 - y0) * rand(n, 1);
  f_mean = 0;
  num_inside = 0;
  for i = 1:length(x)
    for j = 1:length(y)
      if g(x(i), y(i)) >= 0
        num_inside += 1;
        f_mean += f(x(i), y(i));
      endif
    endfor
  endfor
  f_mean /= num_inside;
  area = num_inside/(n^2) * (x1 - x0) * (y1 - y0);
  result = area * f_mean;
endfunction
