% Anthony Rosenblum
% EELE 203
% 5/29/2018
% Lab 5 Memo

%% Commands learned

% syms x y z - create system variables
% residue(num,den) - calculates the partial fraction expansion of a ratio
% of polynomials
% tf(num,den) - obtain transfer function given a laplace transformation
% ratio
% step - computes the step response
% impulse - computers the impulse response
% bode(num,den) - plots the bode plot for a given trasnfer functoin
% laplace(f(t)) - performs laplace transformation of system variable function
% ilaplace(f(s)) - performs inverse laplace transformation of s variable
% function




%% Inlab

%% Laplace Transformation
% 1

syms s x y z d t;

laplace(t^2 * cos(3*t) * heaviside(t))

%% Plot and Laplace Transformation
% 2

laplace(10*heaviside(t) -10 * heaviside(t-10) + 5 * heaviside(t-10) - 5 * heaviside(t-20))

w = [-20:1:30];
com1 = 10*heaviside(w) -10 * heaviside(w-10) + 5 * heaviside(w-10) - 5 * heaviside(w-20);

plot(w,com1)

%% Partial Fraction Expansion
% 3

num = [0 1 2 0 6];
den = [1 5 7 3 0];
[r,p,k] = residue(num,den)

%% Inverse Laplace Transformaton
% 4

ilaplace( (s^3 + 2*s^2 + 6)/(s*(s+1)^2 * (s+3)))

%% Inverse Laplace Transformation
% 5
ilaplace(-225/(s+t) + 105/(s+3) + 810/(s+3)^2 + 120/s)