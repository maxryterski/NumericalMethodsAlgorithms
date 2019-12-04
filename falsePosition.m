function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
% falsePosition.m
% Created on: 10/6/19
% Created by: Max Ryterski
% Last Modified: 10/6/19
% Description: falsePosition finds the root of a function using false position method.
% Inputs:
%   func - The mathematical function that the .m function is solving the
%   root for.
%   xl - The lower guess.
%   xu - The upper guess.
%   maxit - The maximum number of iterations until the recursion will
%   terminate. 
% Outputs:
%   root - the estimated root location.
%   fx - the function evaluated at the root location.
%   ea - the approximate relative error (%)
%   iter - the number of iterations that occurred.
ea = 100;
root = 0;
iter = 1;
if nargin == 4 
    maxit = 200;
elseif nargin == 3
    es = 0.0001;
    maxit = 200;
elseif nargin > 5 || nargin < 3
    error('Please enter the appropriate number of terms')
end
    while ea > es
        xo = root;
        root = xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
        if iter >= maxit
            break
        elseif func(root)*func(xl) == 0
            break
        elseif func(root)*func(xu) == 0
            break
        elseif func(root)*func(xl) > 0
            xl = root;
        elseif func(root)*func(xl) < 0
            xu = root;
        end
        ea = abs(root-xo)/root * 100;
        iter = iter+1;
    end
fx = func(root);
if iter == 1
    ea = 0;
end