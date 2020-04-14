% Remotely Controlled Vehicle
% Nyquist plot for K = 10

numgc = 10*[1 2]; dengc = [1 1]; sysgc = tf(numgc, dengc);
numg = [1]; deng = [1 2 4]; sysg = tf(numg, deng);
sys = series(sysgc, sysg);

[Gm, Pm, Wcg, Wcp] = margin(mag, phase, w);
nyquist(sys); 
title(['Gm = ', num2str(Gm), 'Pm = ', num2str(Pm)]) % Label gain and phase margins on plot