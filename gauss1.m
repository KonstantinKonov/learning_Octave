function res = gauss1(x, pars)
  sig = pars(1);
  c = pars(2);
  res = exp((-(x - c).^2)/(2 * sig^2));
endfunction