num = 5*[0.1 1];
f1 = [1 0]; f2 = [0.5 1]; f3 = [1/2500 0.6/50 1];
den = conv(f1, conv(f2, f3));
sys = tf(num, den);
bode(sys)