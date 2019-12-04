clc; clear;
format long
g = 9.81;
mu = 0.55;
F = 150;
m = 25;
t = 0:180;
f = @(angle) (mu*m*g)./(cosd(angle)+(mu.*sind(angle)))+F;
% [angle, fx, ea, iter] = bisect(f,0,180);
% fprintf('Angle: %f degrees\nFunction Value: %f Newtons\nError Estimate: %f Percent\nIterations: %d\n',angle,fx,ea,iter) 
plot(t,f(t))


[r,c] = size(A);
U = A; % Designates the upper matrix tenatively to A. This is edited in the rest of the code.
P = eye(c); % Creates an identity matrix that 
L = eye(c);
if r == c % Checks to see if the rows and columns are equal
for i = 1:(r-1)
    Maximum = max(abs(U(i:r,i))); % Finds the absolute maximum value in the first column
end
else
    error('Please enter a square matrix.') % Produces and error if rows and colums are not equal
end