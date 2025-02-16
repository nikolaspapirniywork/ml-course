function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

hypothesis = sigmoid(X*theta);

cost_acc = 0;

for i = 1:m
    current_y = y(i);        
    cost_acc += current_y * log(hypothesis(i)) + (1 - current_y) * log(1 - hypothesis(i));    
endfor

J = - (cost_acc / m);


sums_for_grad = zeros(m, size(theta,1));
for i = 1:m
    for j = 1:size(theta,1)        
        sums_for_grad(i, j) = (hypothesis(i) - y(i)) * X(i, j);
    endfor
endfor 

for j = 1:size(theta,1)    
    grad(j) = 1/m * sum(sums_for_grad(:, j));
end

% =============================================================

end
