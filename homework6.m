%Isaiah Griego
%CS375
%Homework 6

clear all; close all; clc; format compact;

%Problem 3
fprintf('Problem 3:\n');
for n = 100:100:500
    A = zeros(n,n);
    x = ones(n,1);

    for i = 1:n
        for j = 1:n
            A(i,j)=sqrt((i-j)^2+n/10);
        end
    end
    b = A*x;
    xc = A\b;
    infNorm = norm(forwardsErr(A,b,x),inf);
    fprintf('For A = %d x %d;\nThe norm for the forwards error is %d.\n\n'...
        ,n,n,infNorm);
end

%Problem 6
fprintf('Problem 6:\n');
P = [0 1 0; 1 0 0; 0 0 1];
fprintf('P =\n');disp(P);
A = [1 1 1; 2 0 1; -3 1 1];
fprintf('A =\n');disp(A);
b = [5;11;-11];
fprintf('b =\n');disp(b);
[L U]=lu(A);
fprintf('L =\n');disp(L);
fprintf('U =\n');disp(U);
c = L\b;
fprintf('c =\n');disp(c);
x = U\c;
fprintf('x =\n');disp(x);

%Here is the output:
% Problem 3:
% For A = 100 x 100;
% The norm for the forwards error is 3.063400e-009.
% 
% For A = 200 x 200;
% The norm for the forwards error is 8.295096e-007.
% 
% For A = 300 x 300;
% The norm for the forwards error is 5.375949e-005.
% 
% For A = 400 x 400;
% The norm for the forwards error is 7.568807e-004.
% 
% For A = 500 x 500;
% The norm for the forwards error is 1.758832e-002.
% 
% Problem 6:
% P =
%      0     1     0
%      1     0     0
%      0     0     1
% A =
%      1     1     1
%      2     0     1
%     -3     1     1
% b =
%      5
%     11
%    -11
% L =
%    -0.3333    1.0000         0
%    -0.6667    0.5000    1.0000
%     1.0000         0         0
% U =
%    -3.0000    1.0000    1.0000
%          0    1.3333    1.3333
%          0         0    1.0000
% c =
%   -11.0000
%     1.3333
%     3.0000
% x =
%     4.0000
%    -2.0000
%     3.0000