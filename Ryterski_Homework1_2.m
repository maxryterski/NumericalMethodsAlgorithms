% Max Ryterski
% MECH105
% 8/28/19
% Homework 1
clc; clear;
q0 = 10;
R = 60;
L = 9;
C = 0.00005;
t = linspace(0,0.8);
q = q0.*exp(-(R.*t)/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L))^2.*t));
plot(t,q)
title('Charge Versus Time')
xlabel('Time')
ylabel('Charge')