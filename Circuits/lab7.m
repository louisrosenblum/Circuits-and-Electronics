% Anthony Rosenblum
% EELE 203
% 6/1/2018
% Lab 7

%% Passive Filter
%%
% 
% <<1.PNG>>
% 


%% Active Filter
%%
% 
% <<2.PNG>>
% 


%% Gain Plot
semilogx(Frequency, VR21)
hold 
title('Filter Gain Magnitude')
xlabel('Frequency (hz)')
ylabel('Gain (V/V)')



semilogx(Frequency1,VR12)
hold off
legend('Passive Filter','Active Filter')