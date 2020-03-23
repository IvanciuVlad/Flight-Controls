num1 = [6]; den1 = [1 6 11 6]; sys1 = tf(num1, den1);
num2 = [1 6]; den2 = [1 2.594 1.6]; sys2 = tf(num2, den2);
t = [0:0.1:8];
[y1, T1] = step(sys1, t);
[y2, T2] = step(sys2, t);
plot(T1, y1, T2, y2, '--'), grid
xlabel('Time (s)'), ylabel('Step response')