clc; % Komut Penceresi Temizler.
clear; % Çalýþma Dizini Temizler.


deger_DogruVar=0; % Yanlýþ Deðer Girildiðinde Programý Yeniden Baþlatan Deðer Atamasý.

while deger_DogruVar==0 % Yanlýþ Deðere Karþý Program Yeniden Baþlatan Döngü.
    sayi=input('Lütfen Sayýyý Giriniz: ');
    degismeyenSayi=sayi;
    
    
    if sayi>0 && round(sayi)==sayi% Girilen Sayýnýn Pozitif Tam Sayý Olduðunun Kontrolü.
       
        if mod(sayi,7)==0 % Girilen Sayý 7'ye Bölünüyorsa Direk Ekrana Basan kontrol.
            fprintf('X=%d Ýse Cevap=%d\n',sayi,sayi);
            
        else % Girilen Sayý 7'ye Bölünmüyorsa Ýþleme Baþlayan Blok.
            azaltma_Sonu=0; % Sayýnýn Küçük Komþusunu Bulana Kadar Dönmesini Saðlayan Atama.
            azaltma_Sayaci=0; % Sayýnýn Küçük Komþusuna Uzaklýðýný Hesaplayan Sayacýn baþlangýç Atamasý.
            arttirma_Sonu=0; % Sayýnýn Büyük Komþusunu Bulana Kadar Dönmesini Saðlayan Atama.
            arttirma_Sayaci=0; % Sayýnýn Büyük Komþusuna Uzaklýðýný Hesaplayan Sayacýn baþlangýç Atamasý.
        
            
            
            %*************** Sayýnýn Küçük Komþusunu Bulmak Ýçin Gerekli Döngü. *************
            while azaltma_Sonu==0  
                azaltma_Sayaci=azaltma_Sayaci+1; % Küçük Komþuya Uzaklýðý Hesaplayan Sayaç.
            
                if mod(sayi,2)==1 % Sayýnýn Tekliðinin Kontrolü.
                    if mod(sayi,7)==0 % 7'ye Bölünürlük Kontrolü.
                        alt_Sayi=sayi; % Bulduðu 7'ye Bölünen Tek Küçük Komþuyu Atayan Ýþlem.
                        azaltma_Sonu=1; % Deðer Bulunduðu Ýçin Dönðüyü Bitiren Atama.
                    end
                end
                sayi=sayi-1; % Her Döngüde Sayýyý Bir Azaltan Ýþlem. 
            end % While Sonu.
        
            
            
            sayi=degismeyenSayi; % Büyük Komþu Kontrolünü Yapabilmek Ýçin Deðiþen Sayý Deðerini ÝlK Girilen Haline atama. 
            
            
            %******************* Sayýnýn Büyük Komþusunu Bulmak Ýçin Gerekli Döngü. **************
            while arttirma_Sonu==0 
                arttirma_Sayaci=arttirma_Sayaci+1; % Büyük Komþuya Uzaklýðý Hesaplayan Sayaç.
            
                if mod(sayi,2)==1 % Sayýnýn Tekliðinin Kontrolü.
                    if mod(sayi,7)==0 % 7'ye Bölünürlük Kontrolü.
                        ust_Sayi=sayi; % Bulduðu 7'ye Bölünen Tek Büyük Komþuyu Atayan Ýþlem.
                        arttirma_Sonu=1; % Deðer Bulunduðu Ýçin Dönðüyü Bitiren Atama.
                    end
                end
                sayi=sayi+1; % Her Döngüde Sayýyý Bir Arttýran Ýþlem. 
            end % While Sonu.
        
            
            
            if azaltma_Sayaci>arttirma_Sayaci % Küçük Komþu Daha Uzaksa Büyük Komþuyu Yazdýr.
                fprintf('X=%d Ýse Cevap=%d\n',degismeyenSayi,ust_Sayi);
            elseif arttirma_Sayaci>azaltma_Sayaci % Büyük Komþu Daha Uzaksa Küçük Komþuyu Yazdýr.
            fprintf('X=%d Ýse Cevap=%d\n',degismeyenSayi,alt_Sayi);
            end
        end
        
        
        deger_DogruVar=1; % Girilen Sayýnýn Pozitif Bir Tam Sayý Olduðunu Doðrulayan atama.
    
    
    else
        fprintf('Lütfen Pozitif Bir Tam Sayý Giriniz.\n');
    end
end

