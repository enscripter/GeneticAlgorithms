%Isaiah Griego
%Homework 7

clear all; close all; clc; format compact;

%Problem 2
fprintf('Problem 2\n');
A = [-4 1 2; 1 4 0; 0 1 -2];
b = [8;7;0];

%My answer after 2 jacobi iterations:
%[25/8 9/4 -7/8]
%My answer after 2 Gauss-Seidel iterations:
%[-2, 9/4 -9/8]

x0 = zeros(3,1);

iter = 2;
homework7helper(A,b,x0,iter);
iter = 5;
homework7helper(A,b,x0,iter);
iter = 10;
homework7helper(A,b,x0,iter);

%Problem 3
fprintf('Problem 3\n');
%Build the matrix given in the assignment.
n=100;
S = zeros(n,n);
b = ones(n,1).*-1; 
for i = 1:n
    for j = 1:n
        if i == j
            S(i,j) = -3;
            if i == 1
                S(i,j+1) = 1;
            elseif i == n
                S(i,j-1) = 1;
            else
                S(i,j+1) = 1;
                S(i,j-1) = 1;
            end
        end
    end
end
S(1,n)= 1;
S(n,1)= 1;

s0 = zeros(n,1);
iter = 5;
homework7helper2(S,b,s0,iter);
iter = 10;
homework7helper2(S,b,s0,iter);
iter = 20;
homework7helper2(S,b,s0,iter);

%Problem 6
fprintf('Problem 6:\n');
iter = 2;
x0 = [1;1];
fprintf('After %d generations\n',iter);
X = newton_sys_HW7(x0,iter);
disp(X);