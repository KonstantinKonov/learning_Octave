fun = @(x,y) abs(x.^2 + y.^2 - 0.25);
c = @(x) -sqrt(1 - x.^2);
d = @(x) sqrt(1 - x.^2);
quad2d(fun, -1, 1, c, d, 'AbsTol', 1E-50, 'FailurePlot', true, 'Singular', false)