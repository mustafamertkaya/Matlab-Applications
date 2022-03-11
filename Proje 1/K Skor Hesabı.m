clear; % Çalýþma Dizini Temizler.
clc;   % Komut Penceresi Temizler

disp('Girdiðiniz x1, x2 Ve x3 Deðerlerine Göre K skorunu Hesaplayacaðýz. '); % Programýn Ne Ýþe Yaradýðýný Kullanýcýya Belirtmek.
disp(' '); % Çýktýda Fazladan Bir Satýr Boþluk Býrakýr. 
x1=input('Lütfen x1 Deðerini Giriniz: '); % x1 Deðerini Al
x2=input('Lütfen x2 Deðerini Giriniz: '); % x2 Deðerini Al
x3=input('Lütfen x3 Deðerini Giriniz: '); % x3 Deðerini Al

k_Skor= 3/nthroot(1/x1 + 1/x2 + 1/x3 ,3); % 3/³?(1/x1 + 1/x2 + 1/x3)
disp(['Girdiðiniz x1, x2 ve x3 Deðerlerine Göre K Skoru= ' num2str(k_Skor) ]); % disp Ýle K Skor Ekrana Bas.
