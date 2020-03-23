Ka = 30;
t = [0:0.1:1];
nc = [Ka*5]; dc = [1]; sysc = tf(nc, dc);
ng = [1]; dg = [1 20 0]; sysg = tf(ng, dg);
sys = feedback(sysg, sysc);
sys = -sys;
y = step(sys, t);
plot(t, y);
grid;
xlabel('Time (s)')
ylabel('y(t)')