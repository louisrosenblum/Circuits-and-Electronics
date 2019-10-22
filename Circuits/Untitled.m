% Anthony Rosenblum
% 2/1/2018
% EELE 201
% This script calculates the unknown node voltages and mesh currents for
% figure 2 of Lab 4 via the node voltage and mesh current methods.
%

%%
% Node Voltage Method
% Coefficient matrix for Vb, Vc, Vd
a = [0.425, -0.025, -1/15; -1/40, 7/60, -1/40; -1/15, -1/40, 41/120];
% Contstant Matrix in units of Amps
b = [4;0;2]

% Vb, Vc, Vd
IM = a\b

%%
% Mesh Current Method
% Coefficient matrix for Im1, Im2, Im3
c = [58, -40, -15; 40, -65, 40; 15, -40, 29];
% Constant matrix in units of Volts
d = [12;0;-8]

% Im1, Im2, IM3
DM = c\d

Va = 12
Ve = 0;

B = -(DM(1,1)*3) + Va
