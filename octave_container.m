base_cost = 10;
side_cost = 6;
volume = 10; % m^3

[a,b] = meshgrid(1:0.1:5);

cost = a*b*base_cost + 2*(a+b)*volume*side_cost/(a*b);

surf(cost)