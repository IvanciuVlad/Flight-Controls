t = [0:0.1:10]; num = [1]; 
zeta1 = 0.1; den1 = [1 2*zeta1 1]; sys1 = tf(num, den1);
zeta2 = 0.25; den2 = [1 2*zeta2 1]; sys2 = tf(num, den2);
zeta3 = 0.5; den3 = [1 2*zeta3 1]; sys3 = tf(num, den3);
zeta4 = 1.0; den4 = [1 2*zeta4 1]; sys4 = tf(num, den4);

[y1, T1] = impulse(sys1, 1);
[y2, T2] = impulse(sys2, 1);
[y3, T3] = impulse(sys3, 1);
[y4, T4] = impulse(sys4, 1);

plot(t, y1, t, y2, t, y3, t, y4)
xlabel('omega_nt'), ylabel('y(t)/omega_n')
title('\zeta = 0.1, 0.25, 0.5, 1.0')