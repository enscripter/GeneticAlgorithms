function [ err ] = relativeForwardsErr( A,b,xc )
x = A\b;
err = norm(x-xc, inf)/norm(x);
end

