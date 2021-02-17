function [res1, res2] = fun2(v0x, v0y, t)
  g = 9.81;
  res1 = v0x * t;
  res2 = v0y * t - g * t.^2/2;
endfunction
