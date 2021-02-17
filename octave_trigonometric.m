x = -2*pi:0.01:2*pi;
y = tan(x);

plot(x,y)
ylim([-10 10]);
xlim([-2*pi  2*pi]);
set(gca, 'XTick', -2*pi:pi/2:2*pi)
set(gca, 'XTickLabel', {'-2 \pi', '- 3/2 \pi', '-\pi', '-1/2 \pi', '0', '1/2 \pi', '\pi', '3/2 \pi', '2 \pi'})