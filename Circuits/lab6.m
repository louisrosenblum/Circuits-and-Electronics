% Anthony Rosenblum
% EELE 203
% 5/13/2018
% Lab 6

%% Problem #6
j = sqrt(-1);
w = [0:10:2000]*2*pi;
a = w./(2*pi);
r1 = 1000/(2*pi);
c = 10^-6;

% First order
p = abs(1./(r1*10^-6*j*w + 1));

plot(a,p)
title('Linear Magnitude Plot for #6')
xlabel('Frequency (hz)')
ylabel('Magnitude (V/V)')

hold 

% Second order
k = abs((1/(r1*r1*c*c))./((j*w).^2 + (j*w)*((r1*(c+c) + r1 * c)/(r1*r1*c*c)) + 1/(r1*r1*c*c)));

plot(a,k)

% Q = 0.707, RLC

r3 = sqrt(50660.59);
l3 = 39.4784176^-1;

n = abs((1/(l3*c))./((j*w).^2 + (j*w)*(r3/l3)+ 1/(l3*c)));

plot(a,n)

% Q = 1, RLC

r4 = (1000 * 2 * pi)*(0.02533);

m = abs((1/(l3*c))./((j*w).^2 + (j*w)*(r4/l3)+ 1/(l3*c)));

plot(a,m)

hold off

legend('1st order RC','2nd order RC', 'RLC, Q = 0.707', 'RLC, Q=1')

%% Problem #7

wmin = 0.01 * 2 * pi;
wmax = 100000 * 2 * pi;
com1 = logspace(log10(wmin),log10(wmax));
b = com1/(2*pi);
com2 = [0:100:100000];

g = 20 * log(abs(1./(r1*10^-6*j*com1 + 1)));

f = 20 * log(abs((1/(r1*r1*c*c))./((j*com1).^2 + (j*com1)*((r1*(c+c) + r1 * c)/(r1*r1*c*c)) + 1/(r1*r1*c*c))));

v = 20 * log(abs((1/(l3*c))./((j*com1).^2 + (j*com1)*(r3/l3)+ 1/(l3*c))));

x = 20 * log(abs((1/(l3*c))./((j*com1).^2 + (j*com1)*(r4/l3)+ 1/(l3*c))));


semilogx(b,g)
hold
semilogx(b,f)

semilogx(b,v)

semilogx(b,x)
hold off


title('Bode Magnitude Plot')
xlabel('Frequency (hz)')
ylabel('Magnitude dB')
legend('1st order RC','2nd order RC', 'RLC, Q = 0.707', 'RLC, Q=1')

%% Problem 8
% Before the cutoff frequency the 2nd order RC curve, 1st order RC, and Q  =0.707 RLC experience some attenuation
% in descending intensity. Meanwhile the Q = 1 RLC curve manages to go
% above the initial DC gain before dropping down at the cutoff.

% The Q=1 RLC curve behaves closest to the brickwall filter despite
% increasing slightly before the cutoff. It has the steepest slope down.

% Well beyond the cutoff the 1st order RC has the least steep slope of
% -40dB/dec.
% Meanwhile the second order RC, and the two RLC circuits have slopes of
% -100 dB/dec.
