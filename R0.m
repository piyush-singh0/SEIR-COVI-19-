% reproduction number R0
function[r] = R0(day, S0 , I0)
  lam= lambda(day, S0 , I0);
  gam = gamma;
  r = lam/gam;
end




