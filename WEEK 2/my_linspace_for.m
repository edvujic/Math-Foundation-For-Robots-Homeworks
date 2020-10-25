% CREATE YOUR OWN LINSPACE FUNCTION
% y = linspace(x1,x2,n) generates n points. The spacing between the points is (x2-x1)/(n-1).
% linspace is similar to the colon operator, “:”, but gives direct control over the number of points and always includes the endpoints. “lin” in the name “linspace” refers to generating linearly spaced values as opposed to the sibling function logspace, which generates logarithmically spaced values.
% y = linspace(x1,x2,n) generates n points. The spacing between the points is (x2-x1)/(n-1).
% linspace is similar to the colon operator, “:”, but gives direct control over the number of points and always includes the endpoints. 
% “lin” in the name “linspace” refers to generating linearly spaced values as opposed to the sibling function logspace, which generates logarithmically spaced values.

%declare the function's inputs and outputs
%fonksiyonun girdi ve çıktıları ayarla
function [outputMatrix] = my_linspace_for(x1, x2, n_in)
n = 100;
%n is by default gonna be 100
%n, aksi belirtmediği sürece 100 olarak kalır
    switch nargin
        case 2
            incremention = 0;
            %set up the incremention value
            %büyme oranı belirt
            for i = 1:n
                outputMatrix(i)= x1 + incremention;
                incremention = incremention + (x2 - x1)/(n - 1);
                %store in matrix
                %matrise sakla
            end
        case 3
            n = n_in;
            %change value of n into input n value
            %girdi olarak alınan n_in'i n'e eşitle
            incremention = 0;
            for j = 1:n
                outputMatrix(j) = x1 + incremention;
                incremention = incremention + (x2 - x1)/(n - 1);
            end   
end
