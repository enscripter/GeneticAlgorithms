function [] = homework7helper2( A,b,x0,iter )
%gauss_elim_naive and gausseidel functions are the functions provided from the
%professor
%This function is used just to keep a cleaner m-file this prints out the
%results in a clear fashion

fprintf('Iterations: %d\n', iter);
tic
gauss_seidel = gaussseidel(A,b,x0,iter);
fprintf('Gauss-Seidel Time:%fms\n',toc*1000);
tic
gauss_elim = gauss_elim_pivot(A,b);
fprintf('Gaussian Time:%fms\n',toc*1000);
x = A\b;
r = b-A*gauss_seidel;
relativeForwardsErrGS = norm(x-gauss_seidel, inf)/norm(x);
relativeBackwardsErrGS =  norm(r,inf)/norm(b,inf);

r = b-A*gauss_elim;
relativeForwardsErrGE = norm(x-gauss_elim, inf)/norm(x);
relativeBackwardsErrGE =  norm(r,inf)/norm(b,inf);

fprintf('Gauss-Seidel Relative Forwards Error:\n%d\n',...
    relativeForwardsErrGS);
fprintf('Gauss-Seidel Relative Backwards Error:\n%d\n',...
    relativeBackwardsErrGS);
fprintf('Gaussian Relative Forwards Error:\n%d\n',...
    relativeForwardsErrGE);
fprintf('Gaussian Relative Backwards Error:\n%d\n\n',...
    relativeBackwardsErrGE);
end

