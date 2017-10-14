function [ x ] = forwardsErr( A,b,xc )

x = norm(A\b-xc,inf);

end

