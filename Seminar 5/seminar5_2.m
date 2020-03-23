K = 20.5775; 
num = K*[1 4 3]; 
den = [1 5 6+K K 0];
[r, p, K] = residue(num, den)

