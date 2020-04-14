% Remotely Controlled Battlefield Vehicle

numgc = [1 2]; dengc = [1 1]; sysgc = tf(numgc, dengc);
numg = [1]; deng = [1 2 4]; sysg = tf(numg, deng);
sys = series(sysgc, sysg);

w = logspace()