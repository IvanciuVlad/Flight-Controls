k = 10;
M1 = 0.02; M2 = 0.0005;
b1 = 410e-03; b2= 4.1e-03;
t = [0:0.001:1.5];
%state space model
A = [0 0 1 0; 0 0 0 1; -k/M1 k/M1 -b1/M1 0; k/M2 -k/M2 0 -b2/M2];
B = [0; 0; 1/M1; 0]; C = [0 0 0 1]; D = [0]; sys = ss(A, B, C, D);
%simulates step response
y = step(sys, t);
plot(t, y); grid
xlabel('time s'), ylabel('y dot (m/s)')
