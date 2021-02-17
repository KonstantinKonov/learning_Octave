clear all; clc;

filename = "data.dat";
r = 100*rand(100,2);
save("-ascii", filename, "r");

rr = load("-ascii", filename);
plot(rr(:,1), rr(:,2), 'o');

fp = fopen(filename, "r");
while (l = fgetl(fp)) != -1
  fprintf("%s\n", l);
endwhile
fclose(fp);
