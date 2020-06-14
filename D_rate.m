%death rate (infection and natural)
function [dDdt] = S_rate(S, E, I, R)
	muD = DeathRate; %Death rate , death due to the causes other than due to the infection
	alp = alpha;
	N = S+E+I+R; %total population
	dDdt= alp*I + muD*N;
end