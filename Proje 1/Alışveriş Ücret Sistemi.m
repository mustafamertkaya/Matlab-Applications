clear; % �al�sma Dizini Temizler.
clc;   % Komut Penceresini Temizler.

tutar=input('L�tfen Tl Cinsinden Al��veri� Tutar�n�z� Giriniz: ');  % Tutar Al.

if tutar<=0 % Tutar 0'a E�it Veya K���k �se Bu Kod Blo�u �al���r.
    fprintf('L�tfen �nce Al��veri� Yap�n�z.\n');

elseif  tutar>0 && tutar<50 % Tutar 0'dan B�y�k Ve 50'den K���k �se Bu Kod Blo�u �al���r.
    ertesiGun_Teslimat=input('Ertesi G�n Teslimat �stiyorsan�z e, �stemiyorsan�z h Giriniz: ','s'); % Ertesi G�n Teslimat Al.
    if ertesiGun_Teslimat=='e' || ertesiGun_Teslimat=='E'
        toplamUcret1=tutar+4+8;
        fprintf('Al��veri�iniz, Kargo �creti Ve Erken Teslim Bedeliniz Dahil Toplam %g Tl''dir.\n',toplamUcret1);
    elseif ertesiGun_Teslimat=='h' || ertesiGun_Teslimat=='H'
        toplamUcret2=tutar+4;
        fprintf('Al��veri�iniz, Kargo �creti Dahil Toplam %g Tl''dir.\n',toplamUcret2);
    end
    
elseif tutar>=50 % Tutar 50'ye E�it Veya B�y�k �se Bu Kod Blo�u �al���r.
    ertesiGun_Teslimat=input('Ertesi G�n Teslimat �stiyorsan�z e, �stemiyorsan�z h Giriniz: ','s'); % Ertesi G�n Teslimat Al.
    if ertesiGun_Teslimat=='e' || ertesiGun_Teslimat=='E'
        toplamUcret1=tutar+6+8;
        fprintf('Al��veri�iniz, Kargo �creti Ve Erken Teslim Bedeliniz Dahil Toplam %g Tl''dir.\n',toplamUcret1);
    elseif ertesiGun_Teslimat=='h' || ertesiGun_Teslimat=='H'
        toplamUcret2=tutar+6;
        fprintf('Al��veri�iniz, Kargo �creti Dahil Toplam %g Tl''dir.\n',toplamUcret2);
    end   
end