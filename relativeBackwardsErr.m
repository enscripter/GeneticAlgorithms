function [ err ] = relativeBackwardsErr( A,b,xc )
r = b-A*xc;
err = norm(r,inf)/norm(b,inf);
end

