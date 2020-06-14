%Lambda =transmission rate (day)^-1

function[g,boolr] = lambda(day, S0 , I0)
%gamma will be calculated on any day after the day the data is taken for calculating the suseptible rate chaneg of population
%	boolr = 0;
	theta = theta_F;
	A = theta(1) + theta(2)*day + theta(3)*(day^2)+theta(4)*(day^3) + theta(5)*(day^4)+theta(6)*(day^5);
	g = A/(S0*I0);
	g = abs(g);
%	g=1/1000000;
%	r = put(-1);
end