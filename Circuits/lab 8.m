
T = 1;
wo = 2 *pi;
a = 5;
d = 0.5;
ao = 2.5;
t = [-5:1/100:5];


v = a0*ones(size(t)) * a * d;
for n=1:10
    an = sin(n*pi*d)/n * cos(n*wo*t)
    v = v + 2*a*an/pi;
end
     