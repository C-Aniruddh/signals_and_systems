clear all
clc

% Define all variables
t = -10:0.5:10;
n = -10:0.5:10;
A = 5;
f = 0.1;
L = length(t);

% Define all the functions
x1 = A * sin(2*pi*f*t);
x2 = sawtooth(t);
x3 = sawtooth(t, 0.5);
x4 = [];
x5 = [];

% Iterate for x4 and x5 (Unit Step and Unit Ramp)
for i = 1:L
    if t(i) < 0
        x4(i) = 0;
        x5(i) = 0;
    else
        x4(i) = 1;
        x5(i) = t(i);
    end,
end

% Plot sin wave
subplot(5,1,1);
plot(t, x1)
xlabel('time');
ylabel('f(t)');
title('sin wave for continous signal');

% Plot sawtooth
subplot(5,1,2);
plot(t, x2)
xlabel('time');
ylabel('f(t)');
title('sawtooth for continous signal');

% Plot triangular
subplot(5,1,3);
plot(t, x3)
xlabel('time');
ylabel('f(t)');
title('sawtooth for continous signal');

% Plot unit step
subplot(5,1,4);
plot(t, x4)
xlabel('time');
ylabel('f(t)');
title('Unit Step');

% Plot unit ramp
subplot(5,1,5);
plot(t, x5)
xlabel('time');
ylabel('f(t)');
title('Unit Ramp');

figure;

% Plot for discrete

% Plot sin wave
subplot(5,1,1);
stem(n, x1)
xlabel('time');
ylabel('f(n)');
title('sin wave for discrete signal');

% Plot sawtooth
subplot(5,1,2);
stem(n, x2)
xlabel('time');
ylabel('f(n)');
title('sawtooth for discrete signal');

% Plot triangular
subplot(5,1,3);
stem(n, x3)
xlabel('time');
ylabel('f(n)');
title('sawtooth for discrete signal');

% Plot unit step
subplot(5,1,4);
stem(n, x4)
xlabel('time');
ylabel('f(n)');
title('Unit Step');

% Plot unit ramp
subplot(5,1,5);
stem(n, x5)
xlabel('time');
ylabel('f(n)');
title('Unit Ramp');


