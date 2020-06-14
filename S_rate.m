%suseptibility rate

	
	function [dSdt] = S_rate(S, E, I, R)
	muB = BirthRate; %Birth rate / immegration / infulx of more suseptibles into the sustem
	muD = DeathRate; %Death rate , death due to the causes other than due to the infection
	lam = lambda(160,1300000000,321631); % 13th june
	N = S+E+I+R; %total population
	dSdt = muB*N - lam*I*S - muD*S;
	end