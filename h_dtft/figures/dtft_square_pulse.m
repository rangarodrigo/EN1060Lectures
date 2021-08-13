

% Coded by Ranga Rodrigo based on Signals and Systems by Alan V Oppenheim.
% December 3, 2016.

clear;
close all;



N1 = 3; 
omega = -3*pi:pi/100:3*pi;
X = sin(omega*(N1+1/2))./sin(omega/2);


plot(omega,X)


fn = 'dtft_square_pulse_N1_3.dat';
fileID = fopen(fn,'w');
fprintf(fileID,'%s\t%s\n','omega','X');
dlmwrite(fn, [omega', X'],'delimiter', '\t', 'precision', 6 , '-append');
fclose(fileID);

