% Anthony Rosenblum
% EELE 203
% 5/21/2018
% ICA 11

j = sqrt(-1);
wmin = 1;
wmax = 1000000000;
w = logspace(log10(wmin),log10(wmax));
h = 100 .* ((1 + j*(w/10)).*(1 + j*(w/10000))./((1+j*(w/100)).*(1+j*(w/100000)).*(1+j*(w/1000000))));

z = 20*log10(abs(h));
k = angle(h) * 180/pi;

subplot(2,1,1), semilogx(w/(2*pi),z)
xlabel('Frequency (rad/s)'), ylabel ('Gain (dB)')
title('Bode Magnitude Plot')


subplot(2,1,2), semilogx(w/(2*pi), k)
xlabel('Frequency (rad/s)'), ylabel ('Phase angle (deg)')
title('Bode Phase Plot')