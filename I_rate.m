%infected rate 
function [dIdt] = I_rate(S, E, I, R)
	muD = DeathRate; %Death rate , death due to the causes other than due to the infection
	sig = sigma;
	gam = gamma;
	alp = alpha;
	dIdt = sig*E - gam*I - muD*I - alp*I;
end