clc; % Komut Penceresi Temizler.
clear; % �al��ma Dizini Temizler.


deger_DogruVar=0; % Yanl�� De�er Girildi�inde Program� Yeniden Ba�latan De�er Atamas�.

while deger_DogruVar==0 % Yanl�� De�ere Kar�� Program Yeniden Ba�latan D�ng�.
    sayi=input('L�tfen Say�y� Giriniz: ');
    degismeyenSayi=sayi;
    
    
    if sayi>0 && round(sayi)==sayi% Girilen Say�n�n Pozitif Tam Say� Oldu�unun Kontrol�.
       
        if mod(sayi,7)==0 % Girilen Say� 7'ye B�l�n�yorsa Direk Ekrana Basan kontrol.
            fprintf('X=%d �se Cevap=%d\n',sayi,sayi);
            
        else % Girilen Say� 7'ye B�l�nm�yorsa ��leme Ba�layan Blok.
            azaltma_Sonu=0; % Say�n�n K���k Kom�usunu Bulana Kadar D�nmesini Sa�layan Atama.
            azaltma_Sayaci=0; % Say�n�n K���k Kom�usuna Uzakl���n� Hesaplayan Sayac�n ba�lang�� Atamas�.
            arttirma_Sonu=0; % Say�n�n B�y�k Kom�usunu Bulana Kadar D�nmesini Sa�layan Atama.
            arttirma_Sayaci=0; % Say�n�n B�y�k Kom�usuna Uzakl���n� Hesaplayan Sayac�n ba�lang�� Atamas�.
        
            
            
            %*************** Say�n�n K���k Kom�usunu Bulmak ��in Gerekli D�ng�. *************
            while azaltma_Sonu==0  
                azaltma_Sayaci=azaltma_Sayaci+1; % K���k Kom�uya Uzakl��� Hesaplayan Saya�.
            
                if mod(sayi,2)==1 % Say�n�n Tekli�inin Kontrol�.
                    if mod(sayi,7)==0 % 7'ye B�l�n�rl�k Kontrol�.
                        alt_Sayi=sayi; % Buldu�u 7'ye B�l�nen Tek K���k Kom�uyu Atayan ��lem.
                        azaltma_Sonu=1; % De�er Bulundu�u ��in D�n��y� Bitiren Atama.
                    end
                end
                sayi=sayi-1; % Her D�ng�de Say�y� Bir Azaltan ��lem. 
            end % While Sonu.
        
            
            
            sayi=degismeyenSayi; % B�y�k Kom�u Kontrol�n� Yapabilmek ��in De�i�en Say� De�erini �lK Girilen Haline atama. 
            
            
            %******************* Say�n�n B�y�k Kom�usunu Bulmak ��in Gerekli D�ng�. **************
            while arttirma_Sonu==0 
                arttirma_Sayaci=arttirma_Sayaci+1; % B�y�k Kom�uya Uzakl��� Hesaplayan Saya�.
            
                if mod(sayi,2)==1 % Say�n�n Tekli�inin Kontrol�.
                    if mod(sayi,7)==0 % 7'ye B�l�n�rl�k Kontrol�.
                        ust_Sayi=sayi; % Buldu�u 7'ye B�l�nen Tek B�y�k Kom�uyu Atayan ��lem.
                        arttirma_Sonu=1; % De�er Bulundu�u ��in D�n��y� Bitiren Atama.
                    end
                end
                sayi=sayi+1; % Her D�ng�de Say�y� Bir Artt�ran ��lem. 
            end % While Sonu.
        
            
            
            if azaltma_Sayaci>arttirma_Sayaci % K���k Kom�u Daha Uzaksa B�y�k Kom�uyu Yazd�r.
                fprintf('X=%d �se Cevap=%d\n',degismeyenSayi,ust_Sayi);
            elseif arttirma_Sayaci>azaltma_Sayaci % B�y�k Kom�u Daha Uzaksa K���k Kom�uyu Yazd�r.
            fprintf('X=%d �se Cevap=%d\n',degismeyenSayi,alt_Sayi);
            end
        end
        
        
        deger_DogruVar=1; % Girilen Say�n�n Pozitif Bir Tam Say� Oldu�unu Do�rulayan atama.
    
    
    else
        fprintf('L�tfen Pozitif Bir Tam Say� Giriniz.\n');
    end
end

