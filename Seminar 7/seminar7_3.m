t = [0:0.01:10]; k = [20, 10, 4.44]; %Loop for 3 gains: K = 20, 10, 4.44
y = zeros(length(t), length(K));

for i=1:3
    numgc = K(i)*[1 2]; dengc = [1 1]; sysgc = tf(numgc, dengc);
    numg = [1]; deng = [1 2 4]; sysg = tf(numg, deng);
    syss = series(sysgc, sysg);
    sys = feedback(syss, [1]);
    y(:, i) = step(sys, t); % compute step response
end

plot(t, y(:, 1), t, y(:, 2), t, y(:, 3)), grid
xlabel('Time (s)'), ylabel('y(t)')