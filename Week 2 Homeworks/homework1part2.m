% Numaranıza göre x[i] değerlerini belirlemeniz gerekmektedir. Örneğin, 130202015 olan öğrenci için
% x = [ 1 3 0 2 0 2 0 1 5]
% n ve D değeri x'in eleman sayısına eşittir.
% x[1], x'iın 1. elemanı olarak kabul edilmelidir.
% zorunlu oldmadıkça döngü kullanılmamalıdır.

% Denklem 1:

x = [1 7 0 2 0 1 1 2 7];
expression = sym(-200*exp(-0.02)*sqrt(x(1)^2 + x(2)^2));
vpa(expression)

% Denklem 2:

x = [1 7 0 2 0 1 1 2 7];

squared = sum(x.^2);
cosined = sum(cos(2*pi*x)); % skaler oldugu icin nokta kullanmiyoruz
D = size(x,2);

result_1 = -20*exp(-0.02)*sqrt(D.^(-1)*squared) - exp(D-1)*cosined+20+exp(1);
vpa(result_1)

% Denklem 3:

result_2 = sum(abs(x.*sin(x) + x.*.1));
vpa(result_2)

% Denklem 4:

result_3 = prod(sqrt(x).*sin(x))

% Denklem 5:

i_matrix = 1:D;
result_4 = sum((x.^2)/4000) - prod(x./sqrt(i_matrix)+1);
vpa(result_4);

% Denklem 6:

even = x(2:2:end);
even(numel(x)) = 0;
% 1 7 0 2 0 1 1 2 7

result_5 = sum(exp(-0.2)*sqrt(x.^2 + even.^2) + 3*(cos(x.*2) + sin(even.*2)));
vpa(result_5)

% Denklem 7:

            
even = x(2:2:end);
even(numel(x)) = 0;

odd = x(1:2:end);
odd(numel(x)) = 0;

A = (odd.*sin(x) + sin(even));
B = (odd.^2 - x.*2 + even.*3 - cos(x) + 1);

result_6 = sum(i_matrix.*x.^2) + sum(sin(A).^2.*i_matrix*20) + sum(i_matrix.*log10(1 + i_matrix.*B.^2))
vpa(result_6)
