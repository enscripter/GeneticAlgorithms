function x = gauss_elim_naive(A,b)
% gauss_elim_naive solves system of linear equations Ax=b 
% using Gaussian elimination WITHOUT pivoting
% 
% input:   A - matrix, A(n,n)
%          b - vector, b(n)
% output:  x - vector, x(n)

  [n, m] = size(A);
  if n~=m 
       error('square matrix required')
  end

%---------- elimination step ------------

  for j=1:n       % eliminate every column
    for i=j+1:n   % eliminate every element below main diadonal

      q = A(i,j) / A(j,j);

      % update elements in i-th row

      A(i,j:n) = A(i,j:n) - A(j,j:n)*q;

      % update RHS

      b(i) = b(i) - b(j)*q;

    end
  end

%---------- solving backwards ----------

  x = zeros(n,1);

  for i=n:-1:1

    x(i) = b(i);

    x(i) = x(i) - A(i,i+1:n)*x(i+1:n);

    x(i) = x(i)/A(i,i);

  end

end 
