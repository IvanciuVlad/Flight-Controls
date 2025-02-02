zeta = [0.15:0.01:0.7];
wr_over_wn = sqrt(1-2*zeta.^2);
Mp = (2*zeta.*sqrt(1-zeta.^2)).^(-1)
subplot(211),plot(zeta, Mp),grid
xlabel('\zeta'),ylabel('M_{p\omega}')
subplot(212),plot(zeta, wr_over_wn),grid
xlabel('\zeta'),ylabel('\omega_r/\omega_n/')