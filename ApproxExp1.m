
function  y = ApproxExp1(x,n)
% Returns:  n-th order Taylor approximation of exp(x)
% Input:    x (scalar) 
%           n (integer)

  s = 1;
  for k = 1:n
     s = s + x^k/factorial(k);
  end
  y = s;

end
