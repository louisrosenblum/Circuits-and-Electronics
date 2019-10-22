% Anthony Rosenblum
% EELE 203
% 5/21/2018
% Lab 3c

f = [10, 30, 50, 70, 100, 130, 150, 170, 200, 230, 250, 270, 300,330,340,350,355,360,365,370,400,430,450,470,500,530,550,570,600,700,1000,2000,3000,5000,10000];

z = [7.45,7.45,7.61,7.61,7.61,7.48,7.64,7.54,7.69,7.7,7.85,8.17,8.66,10.17,10,10.51,10.69,10.87,10.68,10.85,10.17,9.48,8.66,8.47,7.98,7.83,7.83,7.67,7.67,7.65,7.36,7.8,8.14,9.29,12.06];

plot(f,z)

hold;


l = 0.0083;
c = 0.000904;

i = sqrt(-1);

alpha = (f*l*i).^-1;
bravo = (c*f*i);

charlie = alpha + bravo + (2.989)^-1;
delta = (charlie).^-1 + 7.88 + (0.000488 * f * i);

foxtrot = abs(delta);

plot(f,foxtrot)
