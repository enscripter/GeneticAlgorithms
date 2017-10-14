function x = gauss_elim_pivot(A,b)
% gauss_elim_pivot solves system of linear equations Ax=b 
% using Gaussian elimination with pivoting
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

    % find largest element in the column 

    [amax, imax] = max( abs( A(j:n, j) ) );
    imax = imax + j-1;


    % swap rows i=imax and i=j

    if imax ~= j
       A([imax j], :) = A([j imax], :);
    end


    % swap elements i=imax and i=j in RHS

    b([imax j]) = b([j imax]);


    % eliminate every element below main diadonal
   
    for i=j+1:n 

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

    x(i) = ( b(i) - A(i,i+1:n)*x(i+1:n) ) / A(i,i);

  end

end 
