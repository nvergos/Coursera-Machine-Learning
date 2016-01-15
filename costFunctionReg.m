%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Submission: Nikolaos Vergos, August 7, 2015
% e-mail: nvergos@utexas.edu
% http://about.me/nvergos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [J, grad] = costFunctionReg(theta, X, y, lambda)
%   COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

% costFunctionReg = costFunction + Regularization terms:
% Will re-use the non-regularized costFunction 

[J, grad] = costFunction(theta, X, y);

% theta(1) term (theta0 parameter) should not be regularized:

thetaFiltered = [0; theta(2:end)];

% J = J(non-regularized) + regularization term:

J = J + (lambda/(2*m)) * (thetaFiltered' * thetaFiltered);

% grad = grad(non-regularized) + regularization term:

grad = grad + (lambda/m) * thetaFiltered;




% =============================================================

end
