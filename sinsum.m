function result = sinsum(t,b)
  n = length(b);
  s = 0;
  for i = 1:n
    s += b(i) * sin(i * t);
  endfor
  result = s;
endfunction
