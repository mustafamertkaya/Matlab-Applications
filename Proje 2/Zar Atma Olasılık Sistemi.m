clc; % Komut Penceresi Temizler.
clear; % Çalýþma Dizini Temizler.

% Arttýrma Ýþlemi Yapýlacaðýnda Ekstra Bir Arttýrma Ýþlemi Yapmamak Ýçin for Döngüsü Kullanýldý. 

sayac_1=0; sayac_2=0; sayac_3=0; sayac_4=0; sayac_5=0; sayac_6=0; % Zarýn Gelme Sayýlarýný Tutan Sayaçlar.


degerDogru_Var=0; % Degerin Doðruluk Kontrolü Ýçin Gerekli Atama.


while degerDogru_Var==0 % Yanlýþ Deðer Girildiðinde Programý Baþtan Baþlatan Döngü.
    
    zarAtma=input('Lütfen Kaç Kere Zar Atýlacaðýný Giriniz: '); % Kaç Kere Zar Atýlacaðýný Alma.
    
    if round(zarAtma)==zarAtma && zarAtma>0 % Deðerin Pozitif Tam Sayý Olduðunun Kontrolü.
        
        for i=1:zarAtma  % zarAtma Sayýsý Kadar Dönðü Oluþturma.
            rastgele_Zar=randi([1,6]); % 1(dahil) ile 6(dahil) Arasýnda Rastgele Tam Sayý Üretir.
    
            switch rastgele_Zar  % Zarlarýn Gelme Durumlarýnýn Kontrol Edilip Sayaçlarýnýn Arttýrýlmasý. 
                case 1
                    sayac_1=sayac_1 +1;
                case 2
                    sayac_2=sayac_2 +1;
                case 3
                    sayac_3=sayac_3 +1;
                case 4
                    sayac_4=sayac_4 +1;    
                case 5
                    sayac_5=sayac_5 +1;
                case 6
                    sayac_6=sayac_6 +1;
            end % switch Sonu
            
        end % Döngü Sonu
        
        
        %**********Gelme Durumlarýnýn Sayýsýný Ve Yüzdesini Ekrana Basma**********
        fprintf('1 Gelen Zarlarýn Sayýsý: %d Ve Toplam Zar Ýçerisindeki Yüzdesi: %%%g\n',sayac_1, (sayac_1/zarAtma)*100);
        fprintf('2 Gelen Zarlarýn Sayýsý: %d Ve Toplam Zar Ýçerisindeki Yüzdesi: %%%g\n',sayac_2, (sayac_2/zarAtma)*100);
        fprintf('3 Gelen Zarlarýn Sayýsý: %d Ve Toplam Zar Ýçerisindeki Yüzdesi: %%%g\n',sayac_3, (sayac_3/zarAtma)*100);
        fprintf('4 Gelen Zarlarýn Sayýsý: %d Ve Toplam Zar Ýçerisindeki Yüzdesi: %%%g\n',sayac_4, (sayac_4/zarAtma)*100);
        fprintf('5 Gelen Zarlarýn Sayýsý: %d Ve Toplam Zar Ýçerisindeki Yüzdesi: %%%g\n',sayac_5, (sayac_5/zarAtma)*100);
        fprintf('6 Gelen Zarlarýn Sayýsý: %d Ve Toplam Zar Ýçerisindeki Yüzdesi: %%%g\n',sayac_6, (sayac_6/zarAtma)*100);
        
        
        %**********Zarýn 4 Gelme Yüzdesi 50'den Büyükse Özel Metni Yazdýr**********
        if ((sayac_4/zarAtma)*100)>50
            fprintf('Pijamalý ''hasta'' yaðýz \\þoföre\\ çabucak %%100%% güvendi\n');
        end
        degerDogru_Var=1; % Doðru Deðerin Girildiðini Kabul Eden Atama.
       
        
    else
        fprintf('Lütfen Pozitif Bir Tam Sayý Giriniz.\n');
    end
    
end % while Sonu.














