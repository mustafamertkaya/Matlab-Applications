clear; % �al��ma Dizini Temizler.
clc;   % Komut Penceresi Temizler.

fprintf('A��rl���n�za G�re Standa kabul Edilip Edilmedi�inizi Belirtece�iz.\n'); % Program�n Ne ��e Yarad���n� Belirtir.
agirlik=input('L�tfen Kg Cinsinden A��rl���n�z� Giriniz: '); % Kullan�c�dan Kg Cinsinden A��rl���n� Al.


if agirlik>0 && agirlik<80 % A��rl�k>0 Ve A��rl�k<80 �se Bu Kod Blo�u �al���r.
    fprintf('Standa Kabul Edildiniz.\n');

elseif agirlik>=80 % A��rl�k>=80 �se Bu Kod Blo�u �al���r.
    kalpRahatsizlik=input('Kalp Rahats�zl���n�z Var �se 1 Yok �se 0 Giriniz: '); 
    if kalpRahatsizlik==1 % Kalp Rahats�zl��� Var �se Bu Kod Blo�u �al���r.
       fprintf('Standa Kabul Edilmediniz.\n');
    elseif kalpRahatsizlik==0  % Kalp Rahats�zl��� Yok �se Bu Kod Blo�u �al���r.
       fprintf('Standa Kabul Edildiniz.\n');
    end    
    
else
    fprintf('Yanl�� Ag�rl�k De�eri Girdiniz L�tfen Tekrar Deneyiniz.\n');
end
