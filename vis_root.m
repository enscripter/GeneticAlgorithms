function vis_root
% Example of using vis_roots function with one of the following methods:
%
% [x, xn] = bisect(f, a, b, nmax);
% [x, xn] = newton(f, df, x0, m, nmax);
% [x, xn] = secant(f, x1, x2, nmax);
% [x, xn] = falsepos(f, a, b, nmax);
%--------------------------------------------------------

% select function
f  = inline('4*x.^3 + 6*x.^2 - 2');
df  = inline('12*x.^2 + 12*x');

% root finding parameters
a=0;     b=1.9;   % end of interval for bisection and false position
x0=1.9;  m=1;     % initial guess and multiplicity for Newton 
x1=1.8;  x2=1.9;  % initial guesses for secant

nmax = 10;

% uncomment one of the following

%[x, xn] = bisect(f, a, b, nmax);
%plot_root(f, [-2, 2], [a,b], xn);

%[x, xn] = newton(f, df, x0, m, nmax);
%plot_root(f, [-2, 2], x0, xn);

%[x, xn] = secant(f, x1, x2, nmax);
%plot_root(f, [-2, 2], [x1,x2], xn);

%[x, xn] = falsepos(f, a, b, nmax);
%plot_root(f, [-2, 2], [a,b], xn);

end

%--------------------------------------------------------

function plot_root(f, ab, x0, xn)
% function for visualizing the search solution of a non-linear equation
% input:
%         f  - inline function
%         ab - vector [a,b], the range of x where f(x) is plotted  
%         x0 - vector of initial guesses
%         xn - vector of solutions on n'th iteration
% output: 
%         "animated" plot on the screen

  clf;
  hold on
  
  r=xn(end);

  % plot function
  imax  = 2000;   % number of points where f(x) is evaluated
  xi = linspace(ab(1), ab(2), imax);
  yi=f(xi);
  plot (xi,yi,'b-', ab, 0*ab, 'k-');
    
  % show initial guesses with red
  plot(x0,f(x0), 'ro', x0,0, 'r.');
  pause(1);
  
  % show iteration points with blue  
  for k=1:length(xn)
    xk = xn(k);
    fk = f(xk);
    plot(xk, fk, 'bo', xk, 0, 'k.');
    pause(0.5)
  end

  % show final solution with red
  plot(r,f(r), 'ro', r,0, 'r.');
  pause(1);
  
  hold off
  
end
