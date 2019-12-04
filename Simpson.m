function [I] = Simpson(x,y)
% Simpson.m
% Created on: 11/7/19
% Created by: Max Ryterski
% Last Modified: 11/14/19
% Description: Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
k = max(size(x)); % Number of segments
d = diff(x); % Spacing of each segment
t = (2.2204*exp(1)^-16)*1000;
h = sum(diff(d));
if nargin>2||nargin<2
    error('Please enter the appropriate number of inputs')
end
if max(size(x))~= max(size(y)) 
    error('Vectors must be the same length')
end 
if h>t
    error('Make sure the x vector is equally spaced')
end 
if sum(h)==0 
    if rem(length(x),2)~=0  
        I=((x(k)-x(1))/(3*(k-1)))*((y(1))+(4*(sum(y(2:2:k)))+(2*sum(y(3:2:k-2)))+y(k))); 
            elseif rem(k,2)==0 
                warning('Trapizoidal rule is used for last section')
                I1=((x(k-1)-x(1))/(3*(k-2)))*((y(1))+(4*(sum(y(2:2:k-1)))+(2*sum(y(3:2:k-3)))+y(k-1)));
                I2=(((x(k)-x(k-1)))/2)*(((y(k-1))+(y(k)))); 
                I=I1+I2;
    end
end
end



