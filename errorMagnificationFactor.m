function x = errorMagnificationFactor( A,b,xc )

x = relativeForwardsErr(A,b,xc)/relativeBackwardsErr(A,b,xc);

end