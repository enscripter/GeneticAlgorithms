
function x = gaussseidel(A, b, x0, itermax)
%
% solve a linear system A*x = b by Gauss-Seidel method; 
% 
% input: 
%         A       - matrix, (n x n)
%         b       - RHS vector, (n)
%         x0      - initial guess, (n)
%         itermax - number of iterations
% output: 
%         x       - solution vector (approximation)

  n = length(A);
  d = diag(A);        % extract diagonal of A
%  L = tril(A,-1);     % extract element below main diagonal
%  U = triu(A, 1);     % extract element above main diagonal

  R = A - diag(d);    % R is the remainder, R=L+U
  x = x0;             % initialize vector x

  % loop for Gauss-Seidel iteration

  for iter = 1:itermax

%    xc = x;                         % save current solution 

    for i=1:n                       % update x(i) one-by-one

      %x(i) = (b(i) - U(i,:)*xc - L(i,:)*x)/d(i);
      x(i) = (b(i) - R(i,:)*x)/d(i);              % replaces the line above

    end

  end
  
end