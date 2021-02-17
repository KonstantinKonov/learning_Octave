clear all; clc; clf;

f = @(x) sin(x);
fplot(f, [-10,10], 201)

hold on;

fplot(@cos, [-10,10], 201)