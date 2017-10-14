
function [x, xn] = newton(f, df, x0, m, nmax)
% find the root of equation f(x)=0 by newton method;
% input: 
%         f      - inline function
%         df     - derivative of the function
%         x0     - initial guess
%         m      - multiplicity of the root
%         nmax   - maximum number of iterations
% output: 
%         x      - the approximation for the root
%         xn     - vector of apporximations x(iter)

  % compute function at initial guesses
 
  x = x0;
  
  % begin iterations
  
  for n=1:nmax

    y  = f(x);
    dy = df(x);

    if dy == 0
     error('zero derivative');
    end

    dx = - m*y/dy;
    x  = x + dx;
    xn(n) = x;
   
  end

end
