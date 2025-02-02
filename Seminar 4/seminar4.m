t = [0:0.1:12]; num = [1]; 
zeta1 = 0.1; den1 = [1 2*zeta1 1]; sys1 = tf(num, den1);
zeta2 = 0.2; den2 = [1 2*zeta2 1]; sys2 = tf(num, den2);
zeta3 = 0.4; den3 = [1 2*zeta3 1]; sys3 = tf(num, den3);
zeta4 = 0.7; den4 = [1 2*zeta4 1]; sys4 = tf(num, den4);
zeta5 = 1.0; den5 = [1 2*zeta5 1]; sys5 = tf(num, den5);
zeta6 = 2.0; den6 = [1 2*zeta6 1]; sys6 = tf(num, den6);

[y1, T1] = step(sys1, t); [y2, T2] = step(sys2, t);
[y3, T3] = step(sys3, t); [y4, T4] = step(sys4, t);
[y5, T5] = step(sys5, t); [y6, T6] = step(sys6, t);

plot(T1, y1, T2, y2, T3, y3, T4, y4, T5, y5, T6, y6)
xlabel('omega_nt'), ylabel('y(t)')
title('\zeta = 0.1, 0.2, 0.4, 0.7, 1.0, 2.0'), grid