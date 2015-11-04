function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

errNow = 100;

% for c1 = logspace(-3, log10(30), 10)
% 	for sigma1 = logspace(-2, log10(1), 10)

% 		model       = svmTrain(X, y, c1, @(x1, x2) gaussianKernel(x1, x2, sigma1)); 
% 		predictions = svmPredict(model, Xval);
% 		predictErr  = mean(double(predictions ~= yval));

% 		if (predictErr < errNow)
% 			C      = c1;
% 			sigma  = sigma1;
% 			errNow = predictErr;

% 			C, sigma, errNow
% 		end

% 	end

% end 


% =========================================================================

C =  0.30711;
sigma =  0.077426;
errNow =  0.030000;


end
