% Liquid Control System Analysis

K = 16;
[np, dp] = pade(1, 2);
sysp = tf(np, dp);
num = K;
d1 = [1 1]; d2 = [30 1]; d3 = [1/9 1/3 1];
den = conv(d1, conv(d2, d3));
sysg = tf(num, den);
sys = series(sysp, sysg); % compute L(s)
margin(sys); % Compute gain and phase margins
