function [A] = specialMatrix(n,m)
% specialMatrix.m
% Created on: 9/15/19
% Created by: Max Ryterski
% Last Modified: 9/16/19
% Description: This fuction recieves two inputs (rows and columns) and
% calculates an output special matrix.
% Inputs:
%   n - How many rows are in the matrix
%   m - How many columns are in the matrix
% Outputs:
%   A - The special matrix with first row and first column increasing 1:m
%   and 1:n respectively
A = zeros(n,m); % Creates a vector template with zeros to be filled in
i = 1; % Sets the initial value of i
j = 1; % Sets the initial value of j
if nargin == 2 % If two inputs are entered
    for i = 1:n % Controls what row is being indexed
        for j = 1:m % Controls what column is being indexed
            if i == 1 % If in the first row
                A(i,j) = j; % Inserts values 1:m, corresponding to the column
            elseif j == 1 % If in the first column 
                A(i,j) = i; % Inserts values 1:n, corresponding to the row
            else % For all other circumstances
                A(i,j) = A(i-1,j)+A(i,j-1); % The indexed number is equal to the number before it plus the number above it
            end
        end
    end
else % If anything other than two inputs are entered
    error('Enter 2 inputs') % Displays error message
end
