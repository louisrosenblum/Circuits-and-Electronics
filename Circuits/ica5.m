% Anthony Rosenblum
% 5/16/2018
% EELE 203
% ICA 5

T = 1;
t=(0:T/100:40*T);
w = sqrt(0.1875);

y = 3.654*exp((-1+(sqrt(3)/2))*t) + 1.345*exp((-1-(sqrt(3)/2))*t);
a = 5*exp(-.5*t) -(0.5*exp(-0.5*t).*t);
b = exp(-0.25 .* t).*(5*cos(w.*t) - 4.04*sin(w.*t));
c = 5*cos(0.5 * t) - 6*sin(0.5 * t);

plot(t,y);
hold
plot(t,a);
plot(t,b);

plot(t,c);
hold off

xlabel('t','fontsize', 14, 'fontweight', 'bold');
ylabel('value','fontsize',14,'fontweight','bold');
legend('Case 1', 'Case 2', 'Case 3', 'Case 4');