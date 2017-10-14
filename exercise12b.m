%Isaiah Griego
%Computer Exercise 1.2.6b

clear all; close all; clc;

g0 = inline('exp(1).^(x-2)+x.^3');
g1 = inline('exp(1).^x/exp(1).^2+x.^3');
g2 = inline('x.^3*((exp(1).^(x-2)/x.^3)+1)');


x0 = 1;
k = 10;
x = -40:1:40;

loglog(x,g0(x),'ro',x,g1(x),x,g2(x),'c*');
grid on;

xc0 = fpi(g0,1,10);
xc1 = fpi(g1,1,10);