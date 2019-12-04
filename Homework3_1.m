clc;clear;
h = 20;
r1 = 25/2;
r2 = r1+(10.5/14)*(h-19);

if h > 0 && h <= 19
    v = (pi*(r1.^2)*h);
elseif h > 19 && h <= 33
    v = (pi*(r1.^2)*19)+((pi*(h-19)/3)*((r2.^2)+(r1*r2)+(r1.^2)));
else
    error('Please enter an appropriate height.')
end
fprintf('The volume is %0.2f cubic meters.\n',v)