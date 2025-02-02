% The Nyquist plot of
%               0.5
% G(s) = ----------------------
%         s^3 + 2*s^2 + s + 0.5
% with gain and phase margin calculation

num = [0.5]; den = [1 2 1 0.5];
sys = tf(num, den);

[mag, phase, w] = bode(sys); % compute gain and phase margins
[Gm, Pm, Wcg, Wcp] = margin(mag, phase, w);
nyquist(sys); 
title(['Gm = ', num2str(Gm), 'Pm = ', num2str(Pm)]) % Label gain and phase margins on plot