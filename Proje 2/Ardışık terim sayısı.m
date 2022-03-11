clc; % Komut Penceresi Temizler.
clear; % �al��ma Dizini Temizler.

dogru_Deger=0; % Girilen De�erin Do�rulugunun Kontrol� ��in Gerekli Atama.
cozum_var=0; % Girilen De�erin ��z�m Kontrol� ��in Gerekli Atama.
        

while dogru_Deger==0 % Yanl�� De�er Girildi�inde Program� Ba�tan Ba�latmak ��in Gerekli D�ng�.
    toplam=input('L�tfen Pozitif Bir Tam Say� Giriniz: ');
    
    if toplam>0 && round(toplam)==toplam % Girilen Say�n�n Pozitif Tam Say� Oldu�unun Kontrol�.
        % Toplam=((son terim+ilk terim)/2)*( (son terim-ilk terim)+1 )
        % ilk terim=ilk_Terim ,  son terim=ilk_Terim+i  Ve terim say�s�=i+1
        % Toplam� Verilen De�erin �lk Terim Son Terim Ve Terim Say�s�n� Bulan Form�l--->toplam= (2(ilk_Terim)+i)*( i+1 )/2          
        T=2*toplam; % Formuldeki 2'Ye b�l�mden Kurtulup ��lem Yapabilmek ��in toplam 2 �le �arp�ld�. 
        cozum_Sayac=0; % Her Bir ��z�m�n Ka��nc� oldu�unu Yazd�rabilmek ��in Gerkli Ba�lang�� Atamas�.
         
        for i=toplam:-1:1 % Tek Tek ��z�mleri Kontrol Eden D�ng�.
            if mod(T,(i+1))==0 % T De�eri Terim Say�s�na B�l�nebiliyorsa �al��an Blok
                ilk_Terim=((T/(i+1))-i)/2; % �lk Terim Hesaplama
                if round(ilk_Terim)==ilk_Terim && ilk_Terim>0 % �lk Terim pozitif bir Tam Say� �se �al��an Blok.
                    cozum_Sayac=cozum_Sayac+1; % Her D�ng�de Ka��nc� ��z�me Ge�ildi�ini Hesaplayan i�lem.
                    fprintf('%d. ��z�m (%d,%d)/Toplanan Ard���k Terim Say�s�=%d\n' ,cozum_Sayac , ilk_Terim , ilk_Terim+i , i+1);
                    cozum_var=1; % ��z�m Oldu�unu Do�rulayan Atama.
                end
            end
        end
        
        if cozum_var==0 % Yukardaki kod Blo�unda ��z�m Bulunamad���nda ��z�m Bulunamad� Yazd�ran Kontrol.
          fprintf('��z�m Bulunamad�.\n');  
        end 
        
        dogru_Deger=1; % Do�ru De�er Girildi�ini Kabul Eden Atama.
   
    else % Yanl�� De�er Girildi�inde �al��an Blok
        fprintf('Yanl�� De�er Girdiniz L�tfen Tekrar Deneyiniz.\n');
    end
end