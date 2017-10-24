clear all;
clc;

n = input('Enter numerator coefficients : ');
d = input('Enter denominator coefficients : ');

H = tf(n,d);
pzmap(H);
[p, z] = pzmap(H);
disp(p);
disp(z);

if max(real(p))>0
    disp('The Signal is stable');
elseif max(real(p))<0
    disp('The Signal is unstable');
else
    disp('The Signal is marginally stable');
end