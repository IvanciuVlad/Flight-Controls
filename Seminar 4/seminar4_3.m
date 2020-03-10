numg = [10 20];  deng = [1 10 0]; sysg = tf(numg, deng);
[sys] = feedback(sysg, [1]);
t = [0:0.1:8.2]';
v1 = [0:0.1:2]'; v2 = [2:-0.1:-2]'; v3 = [-2:0.1:0]';
u = [v1; v2; v3];
[y, T] = sim(sys, u, t);
plot(T, y, t, u, '--')
xlabel('Time (s)'), ylabel('\theta (rad)'), grid