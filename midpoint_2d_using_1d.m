function I = midpoint_2d_using_1d(f, a, b, c, d, nx, ny)
  function result = g(x)
    result = midpoint_intgr(@(y) f(x,y), c, d, ny);
  endfunction
  g_handle = @g;
  I = midpoint_intgr(g_handle, a, b, nx);
endfunction
