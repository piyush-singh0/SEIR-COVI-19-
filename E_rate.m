%exposed rate 

	function [dEdt] = E_rate(S, E, I, R)
	muD = DeathRate; %Death rate , death due to the causes other than due to the infection
	lam = lambda(160,1300000000,321631);
	sig = sigma;
	dEdt = lam*I*S - sig*E - muD*E;
	end