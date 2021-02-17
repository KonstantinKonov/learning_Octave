clear, clf, clc

data = load("-ascii", "octave_data.dat");

fun_search = @(p) sum( (data(:,2) - (p(1)*data(:,1).^3 + p(2)*data(:,1).^2 + p(3)*data(:,1) + p(4)) ).^2 ); 

fun_eval = @(p,t) p(1)*t.^3 + p(2)*t.^2 + p(3)*t + p(4);

p0 = [max(data(:,2))/2, max(data(:,2))/2, max(data(:,2))/2, min(data(:,2))];

res = fminsearch(fun_search, p0);

plot(data(:,1), data(:,2), "o");
hold on;
x = 0:0.1:8;
plot(x, fun_eval(res, x))