% The convolution of two vectors, u and v, represents the area of overlap under the points as v slides across u. Algebraically, convolution is the same operation as multiplying polynomials whose coefficients are the elements of u and v.
% The sum is over all the values of j that lead to legal subscripts for u(j) and v(k-j+1), specifically j = max(1,k+1-n):1:min(k,m). When m = n, this gives
% 
% w(1) = u(1)*v(1)
% w(2) = u(1)*v(2)+u(2)*v(1)
% w(3) = u(1)*v(3)+u(2)*v(2)+u(3)*v(1)
% ...
% w(n) = u(1)*v(n)+u(2)*v(n-1)+ ... +u(n)*v(1)
% ...
% w(2*n-1) = u(n)*v(n)
function [outputVec] = my_convulation(u,v)
    switch nargin
        case 2
            m = length(u);
            n = length(v);
            lengthOfW = m+n-1;
            w = zeros(1, lengthOfW);
            %declare empty vector W
            %boş W vektorü tanımla
            
            % use the formula
            % formulü kullan
            for k = 1 : lengthOfW
                j = max(1,k+1-n):1:min(k,m);
                w(k) = sum(u(j).*v(k-j+1));
            end
            outputVec = w;
        otherwise
            msg = "Invalid usage, use my_convolution(u, v)";
            error(msg)

end
