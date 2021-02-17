clf;
colormap("default");
z = peaks ();

subplot(1,3,1)
  meshz(z);
  daspect([2.5, 2.5, 1]);
subplot(1,3,2)
  waterfall(z);
  daspect([2.5, 2.5, 1]);
subplot(1,3,3)
  x = linspace(0,1,49);
  for i = 1:49
    plot(x, z(:,i));
    hold on;
  endfor
