clear all;
clc;

syms t;
syms w;

u = heaviside(t);
x1 = 3*exp(-t)*u;
X1 = fourier(x1);
disp('The fourier transform for x = 3e^(-t)*u');
disp(X1);

%%

syms t;
syms w;

u = heaviside(-t);
x2 = 3*exp(t)*u;
X2 = fourier(x2);
disp('The fourier transform for x = 3e^(t)*u(-t)');
disp(X2);

w = -2*pi:pi/50:2*pi;

X22 = subs(X2, w);
M1 = abs(X22);
P = angle(X22);

figure
subplot(2,1,1);
plot(w, M1)
title('Magnitude');

subplot(2,1,2);
plot(w, P)
title('Phase');


%%

syms t;
syms w;

x3 = x1+x2;
X3 = fourier(x3);
disp('The fourier transform for x = e^-|t|');
disp(X3);

w = -2*pi:pi/50:2*pi;

X33 = subs(X3, w);
M3 = abs(X33);
P3 = angle(X33);

figure
subplot(2,1,1);
plot(w, M3)
title('Magnitude');

subplot(2,1,2);
plot(w, P3)
title('Phase');


%%

syms t;
syms w;

x4 = heaviside(t);
X4 = fourier(x4);
disp('The fourier transform for x = u(t)');
disp(X4);

%%

syms t;
syms w;

x5 = sign(t);
X5 = fourier(x5);
disp('The fourier transform for x = sgn(t)');
disp(X5);
