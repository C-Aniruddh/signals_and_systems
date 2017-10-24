clear all;
clc;

syms t;
syms s;

x1 = exp(-t)*heaviside(t);
x2 = -1.25 + 3.5*t*exp(-2*t) + 1.25*exp(-2*t);
x3 = 4 - 4*exp(-2*t)*cos(t) + 2*exp(-2*t)*sin(t);


% Calculate the laplace transform

X1 = laplace(x1, s);
X2 = laplace(x2, s);
X3 = laplace(x3, s);

disp('Laplace transform for X1 : ');
disp(X1);

disp('Laplace transform for X2 : ');
disp(X2);

disp('Laplace transform for X3 : ');
disp(X3);

