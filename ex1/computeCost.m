function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


accum = 0;
for i = 1:m,
    hypothesis = sum(theta' .* X(i,:));
    accum += (hypothesis - y(i))^2;
end

J = accum / (2 * m);

% Vectorized solution
hypothesis = sum(theta' .* X, 2);
diffSquared = (hypothesis - y) .^ 2;
J2 = sum(diffSquared) / (2 * m);
%fprintf('%f', J2);

% =========================================================================

end
