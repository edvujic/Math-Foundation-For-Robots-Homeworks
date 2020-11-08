% 65 ile 90 arasında rastgele bir sayı üretin.
random_number = randi([65 90],1,1)

%65 ile 90 arasında rastgele 1x10.000 boyutlu tam sayıları round, ceil, floor, fix kullanarak üretiniz. 
%max ve min ile en büyük ve en küçük sayıları listeleyip aralığın doğru olduğunu gösteriniz.
with_round = round(65+(90-65)*rand(1,10000))
min(with_round)
max(with_round)
with_floor = floor(65+(91-65)*rand(1,10000))
min(with_floor)
max(with_floor)
with_ceil = ceil(64+(90-64)*rand(1,10000))
min(with_ceil)
max(with_ceil)
with_fix = fix(65+(91-65)*rand(1,10000))
min(with_fix)
max(with_fix)

% 4'den başlayıp 150'ye kadar tüm çift sayıları bir matriste saklayın.
even_numbers = 4:2:150
% 41 ile 85 arasındaki tek sayıları tutan bir vektör tanımlayınız. 
odd_numbers = 41:2:85

% x = [3 7 12 16] vektörünü tanımlayın.
x = [3, 7, 12, 16];
% x vektörünün her bir elemana 12 ekleyin.
x+15
% x vektörünün tek indisli elemanlarına 5 ekleyin. 
x(1:2:numel(x))+2
% x vektörünün her bir elemanın karekökünü hesaplayınız.
sqrt(x)
% x vektörünün her bir elemanın küpünü hesaplayın.
x.^3

% Aşağıdaki vektörleri tanımlayınız.

%   a. 2, 4, 6, 8, ...
a = 2:2:100
%   b. 10, 8, 6, 4, 2, 0, -2, -4
b = 10:-2:-100
%   c. 1, 1/2, 1/3, 1/4, 1/5, ...
ones(1,100)./(1:1:100)
%   d. 0/1, 1/2, 2/3, 3/4, 4/5, ...
(0:99)./((1:100))

% x = [4 5 3 8]'  y = [6 7 10 5]' matrislerini tanımlayınız.
x = [4 5 3 8]'
y = [6 7 10 5]'
% a.x matrisinin elemanlarının toplamını y matrisinin her bir elemanına ekleyiniz.
y+sum(x,1)
% b.x matrisinin her bir elemanının y matrisinin ilgili elemanı kadar kuvvetini alınız. 
% Örnek= x in üçüncü elemanının y matrisinin üçüncü elemanı kadar kuvveti.
x.^y
%c. Y matrisinin her bir elemanını x in ilgili elemanına bölünüz.
y./x
%d. X matrisi ile Y matrisinin her bir elemanını birbiri ile çarpınız.
x.*y

% 250 ile 400 arasındaki sayıları 30 eşit parçaya bölerek A matrisinde saklayın
A = linspace(250,400, 30)

% 250 ile 400 arasındaki sayıları logaritmik artışla 30 parçaya bölerek A matrisinde saklayın
logspace((log(250)/log(10)), (log(400)/log(10)), 30)

% Daha önce tanımlı A matrisinin 5. satırındaki değerleri 2 katı ile değiştirin
A = [1 2 3; 4 5 6; 7 8 9; 4 5 3; 8 5 2 ]
A(5,:) = A(5,:)*2

%magic(10)  matrisinin 3.. satırdaki tüm elemanları listeleyiniz.
C = magic(10)
C(3,:)
%magic(10) matrisinin 5.. sütundaki tüm elemanları listeleyiniz.
C(:,5)
%magic(10) matrisinin 1 ile 5.. sütundaki tüm elemanları listeleyiniz.
C(:,(1:5))
%magic(10)  matrisinin 1,3,5,7,9. satırdaki tüm elemanları listeleyiniz.
C((1:2:9),:)
%magic(10)  matrisinin 1, 5,6,7.. satırdaki tüm elemanları listeleyiniz.
C
C([1, 5:size(C,2)], :)
