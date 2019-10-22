% Anthony Rosenblum
% EELE 203
% 6/4/2018
% ICA 23

%%
j = sqrt(-1);

e = exp(1);
t = [-5;1/50;5];


n =[-2:1:2];

cn= 1/(2*pi) * ((e.^(pi*j*(1-2*n)))./(2*n-1) - (e.^(pi*j*(-2*n-1)))./(2*n+1));

stem(n,abs(cn))
title('Cn Magnitude')
xlabel('Harmonic Number')
ylabel('Magnitude')

%%

stem(n,angle(cn) * 180/pi)
title('Cn Phase')
xlabel('Harmonic Number')
ylabel('Phase (degrees)')


