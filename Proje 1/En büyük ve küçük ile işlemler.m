clear; % �al��ma Dizini Temizler.
clc;   % Komut Penceresi Temizler.

sayi1=input('L�tfen 1. Say�y� Giriniz: ');  % 1. Say�y� Al
sayi2=input('L�tfen 2. Say�y� Giriniz: ');  % 2. Say�y� Al
sayi3=input('L�tfen 3. Say�y� Giriniz: ');  % 3. Say�y� Al
sayi4=input('L�tfen 4. Say�y� Giriniz: ');  % 4. Say�y� Al
sayi5=input('L�tfen 5. Say�y� Giriniz: ');  % 5. Say�y� Al

enbuyuk=sayi1; % Ba�ta 1. Say�y� En B�y�k Se�tik.(*En B�y�k Say� ��in*)
enkucuk=sayi1; % Ba�ta 1. Say�y� En K���k Se�tik.(*En K���k Say� ��in*)

% ********** Ba�taki En B�y�kle 4 Say� Kar��la�t�r�larak Do�ru En B�y�k Bulunur. **********
if sayi2 > enbuyuk
    enbuyuk=sayi2;
end

if sayi3 > enbuyuk
    enbuyuk=sayi3;
end

if sayi4 > enbuyuk
    enbuyuk=sayi4;
end

if sayi5 > enbuyuk
    enbuyuk=sayi5;
end

%*********** Ba�taki En K���kle 4 Say� Kar��la�t�r�larak Do�ru En K���k Bulunur. **********
if sayi2 < enkucuk
    enkucuk=sayi2;
end

if sayi3 < enkucuk
    enkucuk=sayi3;
end

if sayi4 < enkucuk
    enkucuk=sayi4;
end

if sayi5 < enkucuk
    enkucuk=sayi5;
end

fprintf('5 Say�n�n En B�y�k Ve En K�c�k Olanlar�n Toplam�: %g\n',enbuyuk+enkucuk); % En B�y�k �le En K���k Toplam�n� Ekrana Bas.
fprintf('5 Say�n�n En B�y�k Ve En K�c�k Olanlar�n Fark�:   %g\n',enbuyuk-enkucuk); % En B�y�k �le En K���k Fark�n� Ekrana Bas.
fprintf('5 Say�n�n En B�y�k Ve En K�c�k Olanlar�n �arp�m�: %g\n',enbuyuk*enkucuk); % En B�y�k �le En K���k �arp�m�n� Ekrana Bas.





