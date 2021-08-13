clear;
close all;
t = -5:15;
xt = exp(-(t-5).^2/40) + 0.01*t + 0.3;
plot(xt);







fn = 'ct_signal.dat';
fileID = fopen(fn,'w');
fprintf(fileID,'%s\t%s\n','t','xt');
fclose(fileID);pi
dlmwrite(fn, [t', xt'],'delimiter', '\t', 'precision', 6 , '-append');