
function  y = ApproxExp2(x,n)
% Returns:  n-th order Taylor approximation of exp(x)
% Input:    x (scalar) 
%           n (integer)

  s = 1;
  a = 1;
  for k = 1:n
     a = a*x/k;
     s = s + a;
  end
  y = s;

end
