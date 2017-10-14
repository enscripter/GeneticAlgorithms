function matrix_average(pmax)
% Function compares the performance of three functions
% for computing matrix average.  We consider the
% matrices of the following sizes 
%
%    n = 2, 4, 8, 16, ..., 2^(pmax)
% 
% For each n we record time spend by the functions
% and plot the times as function of n.

 nn=zeros(pmax,1);  % array of matrix sizes
 t1=zeros(pmax,1);  % time to compute average using j-i loop 
 t2=zeros(pmax,1);  % time to compute average using i-j loop  
 t3=zeros(pmax,1);  % time to compute average using sum(sum())

 
  for p=1:pmax;   
      
    n  = 2^p;
    M  = rand(n,n);
    
    tic; average1(M); t1(p)=toc;
    tic; average2(M); t2(p)=toc;
    tic; average3(M); t3(p)=toc;

    nn(p) = n;

  end

  loglog(nn,t1,'x-b', nn,t2, '+-g', nn, t3, 'o-r')
  
  xlabel('n');
  ylabel('time, sec');

  legend('j-i loop', 'i-j loop', 'sum(sum())',...
      'Location', 'NorthWest')
  
end

%---------------------------

function avg = average1(M)

  [imax, jmax] = size(M);
  
  s = 0;

  for j=1:jmax
      for i=1:imax
          s = s + M(i,j);
      end
  end

  avg = s / (imax*jmax); 

end

%---------------------------

function avg = average2(M)

  [imax, jmax] = size(M);
  
  s = 0;

  for i=1:jmax
      for j=1:imax
          s = s + M(i,j);
      end
  end

  avg = s / (imax*jmax); 

end

%---------------------------

function avg = average3(M)

  [imax, jmax] = size(M);
  
  avg = sum(sum(M)) / (imax*jmax); 

end

%---------------------------
