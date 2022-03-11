clear; % Çalýsma Dizini Temizler.
clc;   % Komut Penceresini Temizler.

tutar=input('Lütfen Tl Cinsinden Alýþveriþ Tutarýnýzý Giriniz: ');  % Tutar Al.

if tutar<=0 % Tutar 0'a Eþit Veya Küçük Ýse Bu Kod Bloðu Çalýþýr.
    fprintf('Lütfen Önce Alýþveriþ Yapýnýz.\n');

elseif  tutar>0 && tutar<50 % Tutar 0'dan Büyük Ve 50'den Küçük Ýse Bu Kod Bloðu Çalýþýr.
    ertesiGun_Teslimat=input('Ertesi Gün Teslimat Ýstiyorsanýz e, Ýstemiyorsanýz h Giriniz: ','s'); % Ertesi Gün Teslimat Al.
    if ertesiGun_Teslimat=='e' || ertesiGun_Teslimat=='E'
        toplamUcret1=tutar+4+8;
        fprintf('Alýþveriþiniz, Kargo Ücreti Ve Erken Teslim Bedeliniz Dahil Toplam %g Tl''dir.\n',toplamUcret1);
    elseif ertesiGun_Teslimat=='h' || ertesiGun_Teslimat=='H'
        toplamUcret2=tutar+4;
        fprintf('Alýþveriþiniz, Kargo Ücreti Dahil Toplam %g Tl''dir.\n',toplamUcret2);
    end
    
elseif tutar>=50 % Tutar 50'ye Eþit Veya Büyük Ýse Bu Kod Bloðu Çalýþýr.
    ertesiGun_Teslimat=input('Ertesi Gün Teslimat Ýstiyorsanýz e, Ýstemiyorsanýz h Giriniz: ','s'); % Ertesi Gün Teslimat Al.
    if ertesiGun_Teslimat=='e' || ertesiGun_Teslimat=='E'
        toplamUcret1=tutar+6+8;
        fprintf('Alýþveriþiniz, Kargo Ücreti Ve Erken Teslim Bedeliniz Dahil Toplam %g Tl''dir.\n',toplamUcret1);
    elseif ertesiGun_Teslimat=='h' || ertesiGun_Teslimat=='H'
        toplamUcret2=tutar+6;
        fprintf('Alýþveriþiniz, Kargo Ücreti Dahil Toplam %g Tl''dir.\n',toplamUcret2);
    end   
end