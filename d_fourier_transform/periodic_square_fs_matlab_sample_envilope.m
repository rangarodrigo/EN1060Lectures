clc;
clear;
close all;
k = -23:23;
T = 1;
T1 = T/16;
ak  = sin(k*2*pi*T1/T)./(k*pi)
a0 = 2*T1/T;
ak(24) = a0;
bar(ak)
bar(ak)
dlmwrite('example02_fs_coeff.txt', ak, 'precision', '%1.6f')
%dlmwrite('example02_fs_coeff.txt', k, '-append', 'precision', '%d')


fn = '../Lectures/b_signals/figures/dt_exp_alpha_neg_less_than_one.dat';
fileID = fopen(fn,'w');
fprintf(fileID,'%s\t%s\n','n','xn');
fclose(fileID);
dlmwrite(fn, [n', xn'],'delimiter', '\t', 'precision', 6 , '-append');