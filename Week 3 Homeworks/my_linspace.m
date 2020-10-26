% CREATE YOUR OWN LINSPACE FUNCTION
% y = linspace(x1,x2,n) generates n points. The spacing between the points is (x2-x1)/(n-1).
% linspace is similar to the colon operator, “:”, but gives direct control over the number of points and always includes the endpoints. “lin” in the name “linspace” refers to generating linearly spaced values as opposed to the sibling function logspace, which generates logarithmically spaced values.
% y = linspace(x1,x2,n) generates n points. The spacing between the points is (x2-x1)/(n-1).
% linspace is similar to the colon operator, “:”, but gives direct control over the number of points and always includes the endpoints. 
% “lin” in the name “linspace” refers to generating linearly spaced values as opposed to the sibling function logspace, which generates logarithmically spaced values.
function [outputArg] = my_linspace(x1,x2,num_el)
    switch nargin
        %check for # of inputs
        %girdi sayısını kontrol et
        case 2
            n = 100;
            incrementation = (x2 - x1)/(n - 1);
            outputArg = x1: incrementation: x2;
            %use matrix declaration properties
            %matris oluşturma yöntemleriyle matrisi oluştur
        case 3
            incrementation = (x2 - x1)/(num_el - 1);
            outputArg = x1: incrementation: x2;
        otherwise
             msg = "Invalid usage, use my_linspace(x1, x2, n) or my_lispace(x1, x2) for n = 100";
             error(msg)

end
