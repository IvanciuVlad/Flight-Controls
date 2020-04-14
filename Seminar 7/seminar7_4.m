% Remotely Controlled Battlefield Vehicle

numgc = [1 2]; dengc = [1 1]; sysgc = tf(numgc, dengc);
numg = [1]; deng = [1 2 4]; sysg = tf(numg, deng);
sys = series(sysgc, sysg); % Compute GcG(s)

w = logspace(-1, 1, 200);

K = [20, 19, 4.44]; % Nichols chart for K = 20, 10 and 4.44
hold off, clf
for i=1:3
    nichols(K(i)*sys, w), ngrid
    hold on
end

