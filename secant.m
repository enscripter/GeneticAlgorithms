
function [x, xn] = secant(f, x1, x2, nmax)
% find the root of equation f(x)=0 by secant method;
% input: 
%         f      - inline function
%         x1,x2  - initial guesses
%         nmax   - maximum number of iterations
% output: 
%          x     - the approximation for the root
%          xn    - vector of apporximations x(iter)

  % compute function at initial guesses
 
  f1 = f(x1);
  f2 = f(x2);

  % begin iterations
  
  for n=1:nmax

    if f1 == f2
     error('f(x1) = f(x2)')
    end
      
    x3 = x2 - f2 * (x2 - x1) / (f2 - f1);
    f3 = f(x3);
       
    x1=x2; f1=f2;
    x2=x3; f2=f3;
 
    x = x3;
    xn(n) = x;

  end

end
