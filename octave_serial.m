pkg load instrument-control

if(exist("serial") == 3)
  disp("Serial: Supported")
else
  disp("Serial: Unsupported")
endif

s1 = serial("/dev/ttyUSB0", 9600)

srl_flush(s1);

while true
  data = srl_read(s1, 1);
  disp(char(data))
endwhile