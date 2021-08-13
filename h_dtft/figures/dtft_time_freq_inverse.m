

% Coded by Ranga Rodrigo based on Signals and Systems by Alan V Oppenheim.
% December 3, 2016.

clear;
close all;



N1 = 2; 
omega = -3*pi:pi/100:3*pi;
k = 3;
X = sin(k*omega*(N1+1/2))./sin(k*omega/2);




plot(omega,X)


fn = 'dtft_time_freq_inverse_freq_3.dat';
fileID = fopen(fn,'w');
fprintf(fileID,'%s\t%s\n','omega','X');
dlmwrite(fn, [omega', X'],'delimiter', '\t', 'precision', 6 , '-append');
fclose(fileID);
plot(omega, X)

n = -14:14;
x = zeros(size(n));
%x(floor(size(n, 2)/2)-N1 + 1 :floor(size(n, 2)/2)+N1 +1) = 1;
x([9, 12, 15, 18, 21]) = 1;
stem(n, x)

fn = 'dtft_time_freq_inverse_time_3.dat';
fileID = fopen(fn,'w');
fprintf(fileID,'%s\t%s\n','n','x');
dlmwrite(fn, [n', x'],'delimiter', '\t', 'precision', 6 , '-append');
fclose(fileID);




