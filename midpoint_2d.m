function result = midpoint_2d(f, a, b, c, d, nx, ny)
  delta_x = (b - a)/nx;
  delta_y = (d - c)/ny;
  x = linspace(a + delta_x/2, b - delta_x/2, nx);
  y = linspace(c + delta_y/2, d - delta_y/2, ny);
  
  result = delta_x * delta_y * sum(sum(f(x, y'), 1), 2);
endfunction