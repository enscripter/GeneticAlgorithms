%Isaiah Griego 
%CS375 Spring 2010
%Homework 5

clear all; close all; clc; format long;

%Problem 2
f = inline('exp(1).^-x+.1.*x.^2+(1./(x-1))-2');
x = -5:.01:5;
%ans = -0.895091636404668
fzero(f,-1,optimset('TolFun',10e-16));
%ans = 1.651241569577387
fzero(f,2,optimset('TolFun',10e-16));
%ans = 0.999999999999999
fzero(f,.5,optimset('TolFun',10e-16));

%Problem 2.1.2
%Naive Gaussian Elimination
%Exercise 2 Matrices
a = [2 -2 -1 -2; 4 1 -2 1; -2 1 -1 -3];
b = [1 2 -1 2; 0 3 1 4; 2 -1 1 2];
c = [2 1 -4 -7; 1 -1 1 -2; -1 3 -2 6];

%[1,1,2]
ag=naivegaussianelim(a);
%[1,1,1]
bg=naivegaussianelim(b);
%[-1,3,2]
cg=naivegaussianelim(c);

