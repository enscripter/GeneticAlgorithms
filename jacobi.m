
function x = jacobi(A, b, x0, itermax)
%
% solve a linear system A*x = b by Jacobi method
% 
% input: 
%         A       - matrix, (n x n)
%         b       - RHS vector, (n)
%         x0      - initial guess, (n)
%         itermax - number of iterations
% output: 
%         x       - solution vector (approximation)

  n = length(b);        % find matrix size n
  d = diag(A);          % extract diagonal of A
  R = A - diag(d);      % R is the remainder, R=L+U
  x = x0;               % initialize vector x

  % loop for Jacobi iteration

  for iter = 1:itermax
      
    x = (b - R*x)./d;   % new solution
    r = A*x - b;        % residual

  end

end