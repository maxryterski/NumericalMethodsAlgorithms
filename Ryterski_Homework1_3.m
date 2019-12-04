% Max Ryterski
% MECH105
% 8/28/19
% Homework 1
clc; clear;
z = linspace(-5,5);
f = (1/sqrt(2*pi)).*exp(-z.^2./2);
plot(z,f)
title('Standard Nornal Probability Density')
xlabel('z')
ylabel('Frequency')