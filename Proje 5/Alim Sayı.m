function AlimSayi=Proje5_Soru2_MustafaMert_kaya

AlimSayi=0;

for i=1000000:9999999 % 7 Basamakl� B�t�n Say�lar� Kontrol Eden D�ng�
    
    % Her i De�erinde Kullanabilmek ��in S�f�rlama ��lemleri.
    Basamak_0=0; Basamak_1=0; Basamak_2=0; Basamak_3=0; Basamak_4=0; 
    Basamak_5=0; Basamak_6=0; Basamak_7=0; Basamak_8=0; Basamak_9=0;
    
    Basamak_Kontrol=i; % i De�erini De�i�tirmemek ��in Ge�ici De�er Atamas�.
    
    while Basamak_Kontrol>0 
        birlerBasamak=mod(Basamak_Kontrol,10); % B�t�n Basamaklar� Almak ��in ��lem.
        
        % Say� Adetlerini Bulan ��lem Blo�u.
        switch birlerBasamak 
            case 0
                Basamak_0=Basamak_0 + 1;
            case 1
                Basamak_1=Basamak_1 + 1;
            case 2
                Basamak_2=Basamak_2 + 1;
            case 3
                Basamak_3=Basamak_3 + 1;
            case 4
                Basamak_4=Basamak_4 + 1;
            case 5 
                Basamak_5=Basamak_5 + 1;
            case 6 
                Basamak_6=Basamak_6 + 1;
            case 7
                Basamak_7=Basamak_7 + 1;
            case 8
                Basamak_8=Basamak_8 + 1;
            case 9
                Basamak_9=Basamak_9 + 1;
        end
        Basamak_Kontrol=fix(Basamak_Kontrol/10); % Say�n�n Birler Basama��n� Silen ��lem.
    end
    
    % AlimSayi'y� Tespit Edip Sayac� Artt�ran Kontrol.
    if 0==Basamak_0 && (1==Basamak_1 || 0==Basamak_1) && (2==Basamak_2 || 0==Basamak_2) 
        if (3==Basamak_3 || 0==Basamak_3)  && (4==Basamak_4 || 0==Basamak_4)
            if  (5==Basamak_5 || 0==Basamak_5) && (6==Basamak_6 || 0==Basamak_6)  
                if (7==Basamak_7 || 0==Basamak_7) && (8==Basamak_8 || 0==Basamak_8) && (9==Basamak_9 || 0==Basamak_9)
                    AlimSayi=AlimSayi+1;
                end
            end
        end
    end
    
end
end % Fonksiyon Sonu.