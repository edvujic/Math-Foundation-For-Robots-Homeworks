% 13 Ekim Alıştırma
% denklemi hassasiyet = 20 ile çözünüz.
currentPrecision = digits(20);
equation = sym(2*exp(3)*(exp(2)- exp(1))*(exp(2)+exp(1)));
vpa(equation)

% deklemi çözünüz.
equation2 = sym(log10(1 + exp(4)) - log10(1 + exp(3)))
vpa(equation2)

% matrisin ortogonal olup olmadığına bakınız.
% if a matrix is orthogonal that means that D^-1 = D'
D = sym([ 1/sqrt(2) 1/sqrt(2) ; 1/sqrt(2) -(1/sqrt(2))])
if isequal(D', inv(D))
    disp("Matrix Orthogonal!")
end


% a. Matrisin determinantını bulunuz.
% b. Matrisine 2R-1 işlemini uygulayınız.
theta = 60
R = sym([cosd(theta) -sind(theta); sind(theta) cosd(theta)])
determinant = sym(det(R)) % a kısmı
result = sym(2*R-1) % b kısmı


% a. Matrisin determınantı bulunuz.
% b. Matrisine 2R-1 işlemini uygulayınız.
R = sym([cosd(theta) sind(theta); -sind(theta) cosd(theta)])
determinant2 = sym(det(R)) % a kısmı
result2 = sym(2*R-1)

% MATLAB ortamında H matrisini küçükten büyüğe olacak şekilde önce satır sonra sütun olarak sıralayınız.
H = [1 3 2 4; 5 7 8 6; 9 10 12 11; 14 15 13 16]
result3 = sort(H, 2)
result3 = transpose(result3)
