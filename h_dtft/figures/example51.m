clear 
close all

omega = -3*pi:pi/100:3*pi;
a = 0.5;
Hm = 1./sqrt(1 + a^2*cos(omega).*cos(omega) - 2*a*cos(omega) - a^2*sin(omega).*sin(omega));
plot(omega, Hm)

figure
Ha = atan2(-a*sin(omega), 1-a*cos(omega))*180/pi;
plot(omega, Ha)