clear; % Çalýþma Dizini Temizler.
clc;   % Komut Penceresi Temizler

fprintf('\nGireceðiniz X ve Y Deðerlerine Göre Farklý Türde Z foksiyonlarý Hesaplanacaktýr.\n'); %Programýn Ne Olduðunu Anlatmak Ýçin.
X=input('Lütfen X Deðerini Giriniz: '); % X Deðeri Al.
Y=input('Lütfen Y Deðerini Giriniz: '); % Y Deðeri Al.

if X>10 && Y>20 % X>10 ve Y>20 Ýse Ýçerdeki Kod Bloðu Çalýþacak.
    sonuc1_Z= (( abs(X*(Y^3)-(X^2)) )^-X ) - ( exp((-Y)^3 ) ); %( |X*Y³-X²|^-X ) - e^(-Y)³
    fprintf('Girdiðiniz X Ve Y Deðerlerine Göre 1. Durum Z Fonksiyonun Sonucu: %g\n',sonuc1_Z);

elseif X>10 && Y<20 % X>10 ve Y<20 Ýse Ýçerdeki Kod Bloðu Çalýþacak.
    sonuc2_Z=( X+(Y^4) )^5 / sqrt(X^2-Y); % (X+Y?)?/?(X²-Y)
    fprintf('Girdiðiniz X Ve Y Deðerlerine Göre 2. Durum Z Fonksiyonun Sonucu: %g\n',sonuc2_Z);

elseif X<10 && Y>20 % X<10 ve Y>20 Ýse Ýçerdeki Kod Bloðu Çalýþacak.
    sonuc3_Z=( X*log10(X*Y) )- log(exp(X+3*Y)) ; % X*log10(X*Y)-ln(X+3*Y)
    fprintf('Girdiðiniz X Ve Y Deðerlerine Göre 3. Durum Z Fonksiyonun Sonucu: %g\n',sonuc3_Z);

elseif X<10 && Y<20 % X<10 ve Y<20 Ýse Ýçerdeki Kod Bloðu Çalýþacak.
    sonuc4_Z=( abs(5*X) ) + cosd(5*Y); % |5*X|+cos(5*Y)
    fprintf('Girdiðiniz X Ve Y Deðerlerine Göre 4. Durum Z Fonksiyonun Sonucu: %g\n',sonuc4_Z);
    
elseif X==10 || Y==20 % X=10 veya Y=20 Ýse Ýçerdeki Kod Bloðu Çalýþacak.
    sonuc5_Z=( sind(3*X*Y)/cosd(3*X*Y) ) + ( nthroot(Y^2 , 5) ); % tan(3*X*Y)+??(Y²)
    fprintf('Girdiðiniz X Ve Y Deðerlerine Göre 5. Durum Z Fonksiyonun Sonucu: %g\n',sonuc5_Z);

end % Durum Kontrollerinin Sonu.
