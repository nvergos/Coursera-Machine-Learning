%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Submission: Nikolaos Vergos, July 31, 2015
% e-mail: nvergos@utexas.edu
% http://about.me/nvergos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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


% Following lecture's algorithm:

 hypothesis = X * theta;
 
% X * theta = theta0*x0 + theta1*x1 +..., x0 = 1 so h_theta(x) = theta0 + theta1 * x1+..


 sqErrors = (hypothesis - y).^2;
 
 J = (1/(2*m)) * sum(sqErrors);  % Cost Function J



% =========================================================================

end
