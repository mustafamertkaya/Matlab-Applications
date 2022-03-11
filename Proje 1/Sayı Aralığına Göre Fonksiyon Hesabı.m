clear; % �al��ma Dizini Temizler.
clc;   % Komut Penceresi Temizler

fprintf('\nGirece�iniz X ve Y De�erlerine G�re Farkl� T�rde Z foksiyonlar� Hesaplanacakt�r.\n'); %Program�n Ne Oldu�unu Anlatmak ��in.
X=input('L�tfen X De�erini Giriniz: '); % X De�eri Al.
Y=input('L�tfen Y De�erini Giriniz: '); % Y De�eri Al.

if X>10 && Y>20 % X>10 ve Y>20 �se ��erdeki Kod Blo�u �al��acak.
    sonuc1_Z= (( abs(X*(Y^3)-(X^2)) )^-X ) - ( exp((-Y)^3 ) ); %( |X*Y�-X�|^-X ) - e^(-Y)�
    fprintf('Girdi�iniz X Ve Y De�erlerine G�re 1. Durum Z Fonksiyonun Sonucu: %g\n',sonuc1_Z);

elseif X>10 && Y<20 % X>10 ve Y<20 �se ��erdeki Kod Blo�u �al��acak.
    sonuc2_Z=( X+(Y^4) )^5 / sqrt(X^2-Y); % (X+Y?)?/?(X�-Y)
    fprintf('Girdi�iniz X Ve Y De�erlerine G�re 2. Durum Z Fonksiyonun Sonucu: %g\n',sonuc2_Z);

elseif X<10 && Y>20 % X<10 ve Y>20 �se ��erdeki Kod Blo�u �al��acak.
    sonuc3_Z=( X*log10(X*Y) )- log(exp(X+3*Y)) ; % X*log10(X*Y)-ln(X+3*Y)
    fprintf('Girdi�iniz X Ve Y De�erlerine G�re 3. Durum Z Fonksiyonun Sonucu: %g\n',sonuc3_Z);

elseif X<10 && Y<20 % X<10 ve Y<20 �se ��erdeki Kod Blo�u �al��acak.
    sonuc4_Z=( abs(5*X) ) + cosd(5*Y); % |5*X|+cos(5*Y)
    fprintf('Girdi�iniz X Ve Y De�erlerine G�re 4. Durum Z Fonksiyonun Sonucu: %g\n',sonuc4_Z);
    
elseif X==10 || Y==20 % X=10 veya Y=20 �se ��erdeki Kod Blo�u �al��acak.
    sonuc5_Z=( sind(3*X*Y)/cosd(3*X*Y) ) + ( nthroot(Y^2 , 5) ); % tan(3*X*Y)+??(Y�)
    fprintf('Girdi�iniz X Ve Y De�erlerine G�re 5. Durum Z Fonksiyonun Sonucu: %g\n',sonuc5_Z);

end % Durum Kontrollerinin Sonu.
