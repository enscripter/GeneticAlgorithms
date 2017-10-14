%Isaiah Griego
%Class material 02/03/10

a = someValue;
b = someOtherValue;

%Check interval
fa = ourFunction(a);
fb = ourFunction(b);

%Insures that the interval contains a root
if fa*fb > 0
    a = someNewValue;
    b = someOtherNewValue;
end

for n = 1:iterations
   c = (a + b) /2;
   fa = ourFunction(a);
   fb = ourFunction(b);
   fc = ourFunction(c);
   if fc*fa < 0
      c = b;
   end
end