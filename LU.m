clc; clear;
A = [10, 2, -1; -3, -6, 2; 1, 1, 5];
b = [27; -61.5; -21.5];
[r,c] = size(A);
U = A; % Designates the upper matrix tenatively to A. This is edited in the rest of the code.
P = eye(c); % Creates an identity matrix that 
L = eye(c);
if r == c % Checks to see if the rows and columns are equal
for i = 1:(r-1)
    maximum = max(abs(U(i:r,i))); % Finds the absolute maximum value in the first column
    for n=i:r
        if abs(U(n,i)) == maximum %
            G = n;
            break
        end
    end

U([i,G],i:r)=U([G,i],i:r);

L([i,G],1:i-1)=L([G,i],1:i-1);

P([i,G],:)=P([G,i],:);

for n=i+1:r
    
    L(n,i)=U(n,i)/U(i,i);
    
    U(n,i:r)=U(n,i:r)-L(n,i)*U(i,i:r);
end

end
else
    error('Please enter a square matrix.') % Produces and error if rows and colums are not equal
end