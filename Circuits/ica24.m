% Anthony Rosenblum
% EELE 203
% 6/4/2018
% ICA 24

t = [0:.1:10];



%bn = 1/(pi) * (-cos(n*t)/n - sin(2*pi*n) - sin(2*pi*n)/(2*pi*n^2) + 1/n);

k = 0 * t;

for n=1:100
    bn = 1/(pi) * (-cos(2*pi*n)/n - sin(2*pi*n) - sin(2*pi*n)/(2*pi*n^2) + 1/n);
    f = (bn .* sin(n*t));
    m = m +f
    

    
end

plot(t,m)
  