clear all
clc

t = -1:0.001:1;
f = input('Enter the required frequency : ');
A = input('Enter the required amplitude : ');

% Define the equations
x1 = A*sin(2*pi*f*t); % x(t)
x2 = A*sin(2*pi*f*-t); % x(-t)

% Check for even or odd function
if x1 == x2
    disp('The given signal is even');
else if x1 == -x2
        disp('The given signal is odd');
    else
        disp('The given signal is neither even nor odd');
    end
end

% Calculate even and odd components
xe = (x1 + x2)/2;
xo = (x1 - x2)/2;
xr = (xe + xo);

% Plot all the signals
% Plot x(t)

figure

subplot(5,1,1);
plot(t, x1)
xlabel('time');
ylabel('f(t)');
title('x(t)');

% Plot x(-t)
subplot(5,1,2);
plot(t, x2)
xlabel('time');
ylabel('f(t)');
title('x(-t)');

% Plot xe(t)
subplot(5,1,3);
plot(t, xe)
xlabel('time');
ylabel('f(t)');
title('xe(t)');

% Plot xo(t)
subplot(5,1,4);
plot(t, xo)
xlabel('time');
ylabel('f(t)');
title('xo(t)');

% Plot xr(t)
subplot(5,1,5);
plot(t, xr)
xlabel('time');
ylabel('f(t)');
title('xr(t)');

%%

clear all
clc

t = 0:0.01:5;
f = input('Enter the required frequency : ');
A = input('Enter the required amplitude : ');

% Define the equations
x1 = A*exp(t); % x(t)
x2 = A*exp(-t); % x(-t)

% Check for even or odd function
if x1 == x2
    disp('The given signal is even');
else if x1 == -x2
        disp('The given signal is odd');
    else
        disp('The given signal is neither even nor odd');
    end
end

% Calculate even and odd components
xe = (x1 + x2)/2;
xo = (x1 - x2)/2;
xr = (xe + xo);

% Plot all the signals
% Plot x(t)

figure

subplot(5,1,1);
plot(t, x1)
xlabel('time');
ylabel('f(t)');
title('x(t)');

% Plot x(-t)
subplot(5,1,2);
plot(t, x2)
xlabel('time');
ylabel('f(t)');
title('x(-t)');

% Plot xe(t)
subplot(5,1,3);
plot(t, xe)
xlabel('time');
ylabel('f(t)');
title('xe(t)');

% Plot xo(t)
subplot(5,1,4);
plot(t, xo)
xlabel('time');
ylabel('f(t)');
title('xo(t)');

% Plot xr(t)
subplot(5,1,5);
plot(t, xr)
xlabel('time');
ylabel('f(t)');
title('xr(t)');


%%

% For step signal

clear all
clc

n = -10:10;
L = length(n);
f = input('Enter the required frequency : ');
A = input('Enter the required amplitude : ');

% Define the equations
x1(1:L) = 0;  % x(t)
x1(1, 11:L) = 1;
x2 = fliplr(x1);

% Check for even or odd function
if x1 == x2
    disp('The given signal is even');
else if x1 == -x2
        disp('The given signal is odd');
    else
        disp('The given signal is neither even nor odd');
    end
end

% Calculate even and odd components
xe = (x1 + x2)/2;
xo = (x1 - x2)/2;
xr = (xe + xo);

% Plot all the signals
% Plot x(t)

figure

subplot(5,1,1);
stem(n, x1)
xlabel('time');
ylabel('f(t)');
title('x(t)');

% Plot x(-t)
subplot(5,1,2);
stem(n, x2)
xlabel('time');
ylabel('f(t)');
title('x(-t)');

% Plot xe(t)
subplot(5,1,3);
stem(n, xe)
xlabel('time');
ylabel('f(t)');
title('xe(t)');

% Plot xo(t)
subplot(5,1,4);
stem(n, xo)
xlabel('time');
ylabel('f(t)');
title('xo(t)');

% Plot xr(t)
subplot(5,1,5);
stem(n, xr)
xlabel('time');
ylabel('f(t)');
title('xr(t)');
