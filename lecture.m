%Isaiah Griego
%8 February 2010

clear all;
close all;
clc;

% f1 = inline('x.^5-5*x.^4+10*x.^3-10*x.^2+5*x-1');
% f2 = inline('(x-1).^5');
% 
% a = -10:.1:10;
% 
% for i = 1:10
%     [aprxf1, itrf1] = bisect(f1,.9,1.1,i);
%     [aprxf2, itrf2] = bisect(f2,.9,1.1,i);
%     
%     fprintf('Function 1: Approximation: %d\tIteration: %d\n',aprxf1, itrf1);
%     fprintf('Function 2: Approximation: %d\tIteration: %d\n',aprxf2, itrf2);
% end

itr = 1000;

x = zeros(1,itr);
x(1,1) = 1;

format long

tic
for i = 2:itr
   x(1,itr)=cos(x(1,itr-1));
end
toc