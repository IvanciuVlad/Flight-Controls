% Compute the system sensitivity to a parameter variation

K = 20.5775;
den = [1 5 6+K K];
r1 = roots(den);
dK = 1.0289; % 5% change in K
Km = K + dK;
denm = [1 5 6+Km Km];
r2 = roots(denm);
dr = r1 - r2;
S = dr/(dK/K) % Sensitivity formula