function [py, pyd]=Proje3_Soru2_MustafaMert_Kaya(sayi) % py ve pyd Deðerlerini Çýkartan Fonksiyon.

if round(sayi)==sayi % Sayý Tam Sayýysa Direk Sonuç Döndüren Blok.
    py = sayi;
    pyd = 1;
    
else % Sayý Ondalýklý Sayý Ýse Çalýþan Blok
    [pay, payda]=Pay_Ve_Payda_Bulma(sayi); % Çaðýrýlan Alt Fonksiyon.
    
    gecici_Pay=pay; % Pay Deðerini Kaybetmemek Ýçin Gerekli Geçici Deðiþkene Atama.
    gecici_Payda=payda; % Payda Deðerini Kaybetmemek Ýçin Gerekli Geçici Deðiþkene Atama.
    
    while gecici_Payda~=0 % Sayýnýn En Büyük Ortak Bölenini Bulan Döngü.
        ebob=gecici_Payda;
        gecici_Payda=mod(gecici_Pay, gecici_Payda);
        gecici_Pay=ebob;
    end
    % Bulunan En Büyük Ortak Bölene pay ve paydayý Bölerek py ve pyd deðerlerini hesaplama.
    py=pay/ebob; 
    pyd=payda/ebob;
end 
end % Fonksiyon Sonu

% Girilen Sayýyý Tam Sayý Þeklinde pay ve paydaya Dönüþtüren Alt Fonksiyon.
function [pay, payda]=Pay_Ve_Payda_Bulma(sayi) 
    
    basamak=0; % Virgülden Sonra Kaç Basamak Olduðunu Bulan Sayacýn Baþlangýç Atamasý.
    degismeyen_Sayi=sayi; % Deðerini Kaybetmemek için Kullanýlan Geçici Deðiþken Atamasý.
    
    while sayi ~= round(sayi) % Tam Sayý Olana Kadar 10 ile Çarpýp Virgülden Sonra Kaç Basamak Olduðunu Bulan Döngü.
        sayi=sayi*10;
        basamak=basamak+1; % Virgülden Sonraki Basamak Sayacý Arttýrmasý.
    end
    
pay=degismeyen_Sayi*(10^basamak); % Tam Sayý Þeklindeki Pay Hesaplama.
payda=10^basamak; % Tam Sayý Þeklindeki Payda Hesaplama.
end