%here we will solve for the the change in suseptibles polpulation

function[theta] = rateofchangeofS()
	y = csvread('india.csv');
	y = y(:,2);
	X = (1:size(y,1))';
	%X = [1:100]';     %column vector 100x1. X represents the no. of days
	%y = [1:100]';   %column vector for the output that is change of S on the respective day
    X = days_X(X);   % size 100x5    x1 x2 x3 x4 x5 
	X = [ones(size(X,1),1) X]; %sixe 100x6
	theta = zeros(size(X,2),1); %size 6x1
	initial_theta = zeros(size(X,2),1);
	[cost, grad] = costFunction(theta, X, y,0);
	options = optimset('GradObj', 'on', 'MaxIter', 400);
	[theta, cost] = minunc(@(t)(costFunction(t, X, y)), initial_theta, options);
end
