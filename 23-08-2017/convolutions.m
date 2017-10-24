clear all;
clc

x = input('Enter x : ');
h = input('Enter h : ');

nx = length(x);
nh = length(h);

X = [x, zeros(1, nh)];
H = [h, zeros(1, nx)];

for i=1:nx+nh-1
    Y(i) = 0;
    for j=1:i
        Y(i) = Y(i) + X(j)*H(i-j+1);
    end
end

disp(Y)

subplot(1,1,1);
stem(Y)
xlabel('x');
ylabel('y');
title('Convolution');

%%

c = conv(x,h)
disp(c)