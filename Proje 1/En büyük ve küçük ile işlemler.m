clear; % Çalýþma Dizini Temizler.
clc;   % Komut Penceresi Temizler.

sayi1=input('Lütfen 1. Sayýyý Giriniz: ');  % 1. Sayýyý Al
sayi2=input('Lütfen 2. Sayýyý Giriniz: ');  % 2. Sayýyý Al
sayi3=input('Lütfen 3. Sayýyý Giriniz: ');  % 3. Sayýyý Al
sayi4=input('Lütfen 4. Sayýyý Giriniz: ');  % 4. Sayýyý Al
sayi5=input('Lütfen 5. Sayýyý Giriniz: ');  % 5. Sayýyý Al

enbuyuk=sayi1; % Baþta 1. Sayýyý En Büyük Seçtik.(*En Büyük Sayý Ýçin*)
enkucuk=sayi1; % Baþta 1. Sayýyý En Küçük Seçtik.(*En Küçük Sayý Ýçin*)

% ********** Baþtaki En Büyükle 4 Sayý Karþýlaþtýrýlarak Doðru En Büyük Bulunur. **********
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

%*********** Baþtaki En Küçükle 4 Sayý Karþýlaþtýrýlarak Doðru En Küçük Bulunur. **********
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

fprintf('5 Sayýnýn En Büyük Ve En Kücük Olanlarýn Toplamý: %g\n',enbuyuk+enkucuk); % En Büyük Ýle En Küçük Toplamýný Ekrana Bas.
fprintf('5 Sayýnýn En Büyük Ve En Kücük Olanlarýn Farký:   %g\n',enbuyuk-enkucuk); % En Büyük Ýle En Küçük Farkýný Ekrana Bas.
fprintf('5 Sayýnýn En Büyük Ve En Kücük Olanlarýn Çarpýmý: %g\n',enbuyuk*enkucuk); % En Büyük Ýle En Küçük Çarpýmýný Ekrana Bas.





