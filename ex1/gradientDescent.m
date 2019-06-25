function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


    for col = 1:size(X,2)                    
        sumInFormula = sum((sum(theta' .* X, 2) - y) .* X(:, col));
        tmp_theta(col,1) = theta(col) - alpha * (sumInFormula / m);
    end



    
    printf('iteration %f\n', iter);
    printf('old\n');
    theta
    printf('new\n');
    tmp_theta


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    printf('Cost(J) is %f\n', J_history(iter));

    theta = tmp_theta

end

end
