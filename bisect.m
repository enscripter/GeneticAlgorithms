function [x, xn] = bisect(f, a, b, nmax)
% find the root of  equation f(x)=0 by bisection method;
% input: 
%         f      - inline function
%         a, b   - ends of initial interval
%         nmax   - maximum number of iterations
% output: 
%          x     - the approximation for the root
%          xn    - vector of apporximations x(iter)

  % compute function at the ends of interval

  fa=f(a);
  fb=f(b);

  % check if function changes sign at given interval
  
  if fa*fb >= 0
    error('f(a)f(b)<0 not satisfied!')
  end

  xn = zeros(nmax,1);    % allocate array of solutions

  for n=1:nmax           % begin iterations

    c  = (b+a)/2;
    fc = f(c);
 
    if fa*fc < 0         % a and c make the new interval
      b  = c;
      fb = fc;
    else                 % c and b make the new interval
      a  = c;
      fa = fc;
    end

    x     = c;          % new midpoint is the best estimate
    xn(n) = x;          % save root at the current iteration

  end
  
end
