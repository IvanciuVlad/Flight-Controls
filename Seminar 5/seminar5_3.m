K = 20.5775; 
num = K*[1 4 3]; 
den = [1 5 6+K K]; 
sys = tf(num, den);
step(sys)