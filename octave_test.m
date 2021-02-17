function y = fn1(x, y)
  y = x.^2 - y.^2;
end

x = randi([0, 100], 1);
if ( rem(x, 2) == 0 )
  printf("x is even\n");
else
  printf("x is odd\n");
endif