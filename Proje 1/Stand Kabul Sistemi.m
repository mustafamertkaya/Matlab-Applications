clear; % Çalýþma Dizini Temizler.
clc;   % Komut Penceresi Temizler.

fprintf('Aðýrlýðýnýza Göre Standa kabul Edilip Edilmediðinizi Belirteceðiz.\n'); % Programýn Ne Ýþe Yaradýðýný Belirtir.
agirlik=input('Lütfen Kg Cinsinden Aðýrlýðýnýzý Giriniz: '); % Kullanýcýdan Kg Cinsinden Aðýrlýðýný Al.


if agirlik>0 && agirlik<80 % Aðýrlýk>0 Ve Aðýrlýk<80 Ýse Bu Kod Bloðu Çalýþýr.
    fprintf('Standa Kabul Edildiniz.\n');

elseif agirlik>=80 % Aðýrlýk>=80 Ýse Bu Kod Bloðu Çalýþýr.
    kalpRahatsizlik=input('Kalp Rahatsýzlýðýnýz Var Ýse 1 Yok Ýse 0 Giriniz: '); 
    if kalpRahatsizlik==1 % Kalp Rahatsýzlýðý Var Ýse Bu Kod Bloðu Çalýþýr.
       fprintf('Standa Kabul Edilmediniz.\n');
    elseif kalpRahatsizlik==0  % Kalp Rahatsýzlýðý Yok Ýse Bu Kod Bloðu Çalýþýr.
       fprintf('Standa Kabul Edildiniz.\n');
    end    
    
else
    fprintf('Yanlýþ Agýrlýk Deðeri Girdiniz Lütfen Tekrar Deneyiniz.\n');
end
