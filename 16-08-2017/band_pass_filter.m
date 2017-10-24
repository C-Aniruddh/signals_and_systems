clear all
clc

z = [0.9, -(1/0.9), -exp(1i*0.9*pi), exp(-1i*0.9*pi)];
p = zeros(1,4);

figure
subplot(4,1,1);
zplane(z', p')
xlabel('x');
ylabel('y');
title('Pole-Zero Plot');
 
[n, d] = zp2tf(z', p', 1);
w = 0.1:0.1*pi:pi;
[H, w] = freqz(n, d, w);
m = abs(H);

subplot(4,1,2);
plot(m)
xlabel('w');
ylabel('m');
title('Frequency response of band pass filter');

load chirp;
L = filter(n, d, y);
% sound(L)

subplot(4,1,3);
plot(y)
xlabel('x');
ylabel('y');
title('Original sound');

subplot(4,1,4);
plot(L)
xlabel('x');
ylabel('y');
title('Filter output');
