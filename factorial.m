function res = factorial(n)
  if(n == 1)
    res = 1;
    return;
  endif;
  
  res = n * factorial(n - 1);
     
endfunction
