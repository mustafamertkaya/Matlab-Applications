clc; % Komut Penceresi Temizler.
clear; % Çalýþma Dizini Temizler.

dogru_Deger=0; % Girilen Deðerin Doðrulugunun Kontrolü Ýçin Gerekli Atama.
cozum_var=0; % Girilen Deðerin Çözüm Kontrolü Ýçin Gerekli Atama.
        

while dogru_Deger==0 % Yanlýþ Deðer Girildiðinde Programý Baþtan Baþlatmak Ýçin Gerekli Döngü.
    toplam=input('Lütfen Pozitif Bir Tam Sayý Giriniz: ');
    
    if toplam>0 && round(toplam)==toplam % Girilen Sayýnýn Pozitif Tam Sayý Olduðunun Kontrolü.
        % Toplam=((son terim+ilk terim)/2)*( (son terim-ilk terim)+1 )
        % ilk terim=ilk_Terim ,  son terim=ilk_Terim+i  Ve terim sayýsý=i+1
        % Toplamý Verilen Deðerin Ýlk Terim Son Terim Ve Terim Sayýsýný Bulan Formül--->toplam= (2(ilk_Terim)+i)*( i+1 )/2          
        T=2*toplam; % Formuldeki 2'Ye bölümden Kurtulup Ýþlem Yapabilmek Ýçin toplam 2 Ýle Çarpýldý. 
        cozum_Sayac=0; % Her Bir Çözümün Kaçýncý olduðunu Yazdýrabilmek Ýçin Gerkli Baþlangýç Atamasý.
         
        for i=toplam:-1:1 % Tek Tek Çözümleri Kontrol Eden Döngü.
            if mod(T,(i+1))==0 % T Deðeri Terim Sayýsýna Bölünebiliyorsa Çalýþan Blok
                ilk_Terim=((T/(i+1))-i)/2; % Ýlk Terim Hesaplama
                if round(ilk_Terim)==ilk_Terim && ilk_Terim>0 % Ýlk Terim pozitif bir Tam Sayý Ýse Çalýþan Blok.
                    cozum_Sayac=cozum_Sayac+1; % Her Döngüde Kaçýncý Çözüme Geçildiðini Hesaplayan iþlem.
                    fprintf('%d. Çözüm (%d,%d)/Toplanan Ardýþýk Terim Sayýsý=%d\n' ,cozum_Sayac , ilk_Terim , ilk_Terim+i , i+1);
                    cozum_var=1; % Çözüm Olduðunu Doðrulayan Atama.
                end
            end
        end
        
        if cozum_var==0 % Yukardaki kod Bloðunda Çözüm Bulunamadýðýnda Çözüm Bulunamadý Yazdýran Kontrol.
          fprintf('Çözüm Bulunamadý.\n');  
        end 
        
        dogru_Deger=1; % Doðru Deðer Girildiðini Kabul Eden Atama.
   
    else % Yanlýþ Deðer Girildiðinde Çalýþan Blok
        fprintf('Yanlýþ Deðer Girdiniz Lütfen Tekrar Deneyiniz.\n');
    end
end