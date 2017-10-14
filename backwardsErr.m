function [ x ] = backwardsErr( A,b,xc )
    x = norm(b - A*xc, inf);
end