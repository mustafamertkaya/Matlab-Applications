function en_Buyuk_Defne=Proje5_Soru5_MustafaMert_Kaya()

    for i=99999999:-1:10000000
        
        fakToplam = 0;
        gecici = i;
        
        while gecici > 0 % Basamaklarý Faktoriyel Toplamlarýný Bulan Döngü.
            faktoriyel = 1;
            basamak =mod(gecici,10);
            gecici = floor(gecici/10);
            for j=1 : basamak
                faktoriyel = faktoriyel*j;
            end
            fakToplam = fakToplam + faktoriyel;
        end
        
        enbuyukasal1 = enbuyukasalbulma(i); % Alt Foksiyonu Çaðýrma.
        
        if enbuyukasal1 == fakToplam % En Büyük Asal Faktoriyel Toplama Eþitse Defneyi Bulan kontrol.
            en_Buyuk_Defne = i;
            break;
        end
    end
end % Fonksiyon Sonu.


function enbuyukasal1 = enbuyukasalbulma (n) % En Büyük Asal Sayýyý Bulan Alt Fonksiyon.

    enbuyukasaldeneme =0;
    f =2;
    while (f*f) <= n 
        while mod(n,f) ==0 % Sayýnýn Tam Bölündüðünün Kontrolü.
            enbuyukasaldeneme = f;
            n = n/f;
        end
        f = f+1;
    end
    
    if n > 1 % Karakektön Büyük (En fazla) 1 Asal Çarpan Var ise
        enbuyukasaldeneme = n;
    end
    
    enbuyukasal1 = enbuyukasaldeneme;
end % Alt Foksiyon Sonu
    
        
            














