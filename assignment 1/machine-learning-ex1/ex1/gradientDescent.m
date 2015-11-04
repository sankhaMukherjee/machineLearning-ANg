function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
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
    % X = [1 x0; 1 x1; ...]
    % theta = [0; 0]
    % hTheta = theta' * X'; = [0 0 0 ...]
    % errorTerm = hTheta' - y = [0; 0; 0; ...] - y
    % errorTerm' * X = [ (eT + eT+...)  (eT*x(0) + eT*x(1)+...) ]  $



    hTheta = theta' * X'; 
    errorTerm = (hTheta' - y);
    theta = theta - alpha*(1/m)*(errorTerm' * X)';




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
