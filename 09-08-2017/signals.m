clear all
clc

n = -10:10;
L = length(n);
x1 = [];
x1(1,L) = 0;
x1(1,11) = 1;

x2 = [];
x2(1,L) = 0;
x2(1,5) = 1;

x3 = [];
x3(1,L) = 0;
x3(1,15) = 1;

figure
subplot(3,1,1);
stem(n, x1)
xlabel('n');
ylabel('D(n)');
title('D(n)');

subplot(3,1,2);
stem(n, x2)
xlabel('n');
ylabel('D(n+6)');
title('D(n+6)');

subplot(3,1,3);
stem(n, x3)
xlabel('n');
ylabel('D(n-4)');
title('D(n-4)');

%%

clear all
clc

n = -10:10;
L = length(n);
x1 = [];
x1(1,L) = 0;
x1(1,11:L) = 1;

x2 = [];
x2(1,L) = 0;
x2(1,5:L) = 1;

x3 = [];
x3(1,L) = 0;
x3(1,15:L) = 1;

% compute del(n) using u(n)
x4 = [];
x4(1,L) = 0;
x4(1,12:L) = 1;

x5 = x1 - x4;

figure
subplot(4,1,1);
stem(n, x1)
xlabel('n');
ylabel('u(n)');
title('u(n)');

subplot(4,1,2);
stem(n, x2)
xlabel('n');
ylabel('u(n+6)');
title('u(n+6)');

subplot(4,1,3);
stem(n, x3)
xlabel('n');
ylabel('u(n-4)');
title('u(n-4)');

subplot(4,1,4);
stem(n, x5)
xlabel('n');
ylabel('u(n)');
title('u(n)');
