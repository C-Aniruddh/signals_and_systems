clear all
clc

n = -2:2;
x1 = [1,2,-2,3,-1];
L = length(n);

shift = input('Enter the required shift : ');

n1 = -2 - shift;
n2 = 2 - shift;
no = n1:n2;

figure
subplot(2,1,1);
stem(n, x1)
xlabel('n');
ylabel('u(n)');
title('Original Graph');

subplot(2,1,2);
stem(no, x1)
xlabel('n');
ylabel('u(n)');
title('Graph with shift');
