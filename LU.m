function x = LU(A,b)
% LU solves system of linear equations Ax=b using A=LU factorization
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

      % save factor q in A

      A(i,j) = q;

    end
  end

%---------- solving backwards ----------

% solving Lc = b

  c = zeros(n,1);

  for i=1:n

     c(i) = b(i) - A(i,1:i-1)*c(1:i-1);

  end

% solving Ux = c

  x = zeros(n,1);

  for i=n:-1:1

    x(i) = ( c(i) - A(i,i+1:n)*x(i+1:n) ) / A(i,i);

  end

end 
