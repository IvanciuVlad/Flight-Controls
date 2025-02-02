ng1 = [1]; dg1 = [1 10]; sysg1 = tf(ng1, dg1);
ng2 = [1]; dg2 = [1 1]; sysg2 = tf(ng2, dg2);
ng3 = [1 0 1]; dg3 = [1 4 4]; sysg3 = tf(ng3, dg3);
ng4 = [1 1]; dg4 = [1 6]; sysg4 = tf(ng4, dg4);
nh1 = [1 1]; dh1 = [1 2]; sysh1 = tf(nh1, dh1);
nh2 = [2]; dh2 = [1]; sysh2 = tf(nh2, dh2);
nh3 = [1]; dh3 = [1]; sysh3 = tf(nh3, dh3);
sys1 = sysh2/sysg4;
sys2 = series(sysg3, sysg4);
sys3 = feedback(sys2, sysh1, +1);
sys4 = series(sysg2, sys3);
sys5 = feedback(sys4, sys1);
sys6 = series(sysg1, sys5);
sys = feedback(sys6, sysh3);

num = [1 4 6 6 5 21]; den = [12 205 1066 2517 3128 2196 712];
sys11 = tf(num, den);
sys10 = minreal(sys11);


num1 = [10]; den1= [1 1]; sys1 = tf(num1, den1);
num2 = [1]; den2 = [2 0 5]; sys2 = tf(num2, den2);
num3 = [540]; den3 = [1]; sys3 = tf(num3, den3);
num4 = [0 1]; den4 = [1]; sys4 = tf(num4, den4);
sys5 = series(sys1, sys2);
sys6 = series(sys5, sys4);
sys7 = series(sys3, sys6);
sys = feedback(sys7, [1]);

num = [5400]; den = [2 2.5 5402];
sys = tf(num, den);
t = [0:0.005:3];
[y, t] = step(sys, t);
plot(t, y), grid
xlabel('time s');
ylabel('wheel vel');