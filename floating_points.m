function floating_points(n)
% simple example of issues with floating points
% input: n - example number
% attention: example2 works differently from command line

  switch n
    case 1
      example1;
    case 2
      example2;
    case 3
      example3;
    case 4
      example4;
    case 5
      example5;
    otherwise
      disp('no such example');    
  end

end

%---------------------------------------
function example1

    a=1; b=1;
    while a+b ~=a; 
     b=b/2;
     disp(b);
    end

end

%---------------------------------------
function example2

    a=1.e+308;  b=1.1e+308;  c=-1.001e+308;
    a+(b+c)
    (a+b)+c 

end

%---------------------------------------
function example3

    x = 0.005
    (1+x-1)/x
    x = 1.e-15
    (1+x-1)/x

end
    

%---------------------------------------
function example4

    x  = 1.e-15
    y1 = 1/(1-x) - 1/(1+x)
    y2 = 2*x/(1-x*x)

end

%---------------------------------------
function example5

    x = linspace(1 - 2e-8, 1 + 2e-8, 401);
    f = x.^7 - 7*x.^6 + 21*x.^5 - 35*x.^4 + 35*x.^3 - 21*x.^2 +7*x -1;
    %plot(x-1, f, '-r', x-1, (x-1).^7, '-b')
    plot(x-1, (x-1).^7, '-b')

end
%---------------------------------------

