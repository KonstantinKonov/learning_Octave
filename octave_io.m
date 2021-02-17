a = rand(100,2);

%save "-binary" "data.dat" a
fp = fopen("data.dat", "wb");
if (fp != -1)
  fwrite(fp, a, "double");
endif
fclose(fp);

fp = fopen("data.dat", "rb");
if(fp != -1)
  b = fread(fp, [100,2], "double");
endif
fclose(fp);