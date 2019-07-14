function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
%g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

g = zeros(size(z));

rows = size(z)(1);
columns = size(z)(2);

for i = 1:rows
    for j = 1:columns        
        current_z = z(i, j);    
        g(i, j) = 1 / (1 + e ^(-current_z));
    endfor
endfor


% =============================================================

end
