function x = newton_sys_example(x0, itermax)
% Using Newton's method solve the system of non-linear equations
%
%      v = u^3
%      u^2 + v^2 = 1
%
% input:  x0 - inital guess, (u0, v0)
%         itermax - number of iteration

  x = x0;

  for iter = 1:itermax

    s = - Df(x) \ f(x);    % solve Df*s = f
    x = x + s;             % update solution
 
  end

end


function y=f(x)  % function

  y = zeros(2,1);
  y(1) = - x(1)^3 + x(2); 
  y(2) =   x(1)^2 + x(2)^2 - 1;

end


function y=Df(x)  % Jacobian

  y = zeros(2,2);
  y(1,1) = -3*x(1)^2;
  y(1,2) = 1; 
  y(2,1) = 2*x(1);
  y(2,2) = 2*x(2);
  
end