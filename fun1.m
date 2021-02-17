function fun1(time)
  vertical_position = y(time);
  printf("time = %d, y = %g\n", time, vertical_position);
endfunction

function result = y(t)
  g = 9.81;
  v0 = 5;
  result = v0*t - g*t^2/2;
endfunction
