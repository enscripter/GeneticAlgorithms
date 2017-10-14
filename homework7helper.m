function [] = homework7helper( A,b,x0,iter )
%jacobi and gausseidel functions are the functions provided from the
%professor
jacobs = jacobi(A,b,x0,iter);
gauss_seidel = gaussseidel(A,b,x0,iter);
x = A\b;
r = b-A*jacobs;
relativeBackwardsErrJ = norm(r,inf)/norm(b,inf);
relativeForwardsErrJ = norm(x-jacobs, inf)/norm(x);

r = b-A*gauss_seidel;
relativeBackwardsErrGS = norm(r,inf)/norm(b,inf);
relativeForwardsErrGS = norm(x-gauss_seidel, inf)/norm(x);

fprintf('Iterations: %d\n', iter);
fprintf('Jacobi Relative Forwards Error:\n%d\n',...
    relativeForwardsErrJ);
fprintf('Jacobi Relative Backwards Error:\n%d\n',...
    relativeBackwardsErrJ);
fprintf('Gauss-Seidel Relative Forwards Error:\n%d\n',...
    relativeForwardsErrGS);
fprintf('Gauss-Seidel Relative Backwards Error:\n%d\f\n\n',...
    relativeBackwardsErrGS);
end

