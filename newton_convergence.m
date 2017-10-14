
% Script illustrating the order of convergence to a double root
% for the Newton method and the modified Newton method. 
%--------------------------------------------------------

% select function
f  = inline('4*x.^3 + 6*x.^2 - 2');
df = inline('12*x.^2 + 12*x');
  
% analytical solution
r = -1;  % root of multiplicity m = 2

% select parameters for the root search
x0 = -2;
nmax  = 20;   

% find root by the original Newton's method
m=1;
[x, xn1] = newton(f, df, x0, m, nmax);
  
% find root by the modified Newton's method
m=2;
[x, xn2] = newton(f, df, x0, m, nmax);

% compute error
e1     = abs(xn1 - r);
e2     = abs(xn2 - r);

% plot error at i-th iteration vs eroor at (i-1)-th iteration
loglog(e1(1:end-1), e1(2:end), '*r', e2(1:end-1), e2(2:end), 'ob');
hold on


% add straight lines corresponding 
% to the first and the second order of convergence
M1 = 0.5;
M2 = 0.3;
loglog(e1, M1*e1, '-r', e2, M2*e2.*e2, '-b');
hold off

% label axes and add legend
xlabel('e_i')
ylabel('e_{i+1}')
legend('m = 1', 'm = 2', 'e_{i+1} = 0.5 e_i', ...
     'e_{i+1} = 0.3 e^2_i', 'Location', 'NorthWest')
 
