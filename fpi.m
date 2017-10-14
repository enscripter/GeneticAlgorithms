function xc = fpi( g, x0, k )
%FPI Summary of this function goes here
%   Detailed explanation goes here
x = zeros(1,100);
x(1)=x0;
for i = 1:k
    x(i+1) = g(x(i));
end
x = x';
xc=x*(k+1);
end