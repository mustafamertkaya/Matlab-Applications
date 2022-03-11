function [py, pyd]=Proje3_Soru2_MustafaMert_Kaya(sayi) % py ve pyd De�erlerini ��kartan Fonksiyon.

if round(sayi)==sayi % Say� Tam Say�ysa Direk Sonu� D�nd�ren Blok.
    py = sayi;
    pyd = 1;
    
else % Say� Ondal�kl� Say� �se �al��an Blok
    [pay, payda]=Pay_Ve_Payda_Bulma(sayi); % �a��r�lan Alt Fonksiyon.
    
    gecici_Pay=pay; % Pay De�erini Kaybetmemek ��in Gerekli Ge�ici De�i�kene Atama.
    gecici_Payda=payda; % Payda De�erini Kaybetmemek ��in Gerekli Ge�ici De�i�kene Atama.
    
    while gecici_Payda~=0 % Say�n�n En B�y�k Ortak B�lenini Bulan D�ng�.
        ebob=gecici_Payda;
        gecici_Payda=mod(gecici_Pay, gecici_Payda);
        gecici_Pay=ebob;
    end
    % Bulunan En B�y�k Ortak B�lene pay ve payday� B�lerek py ve pyd de�erlerini hesaplama.
    py=pay/ebob; 
    pyd=payda/ebob;
end 
end % Fonksiyon Sonu

% Girilen Say�y� Tam Say� �eklinde pay ve paydaya D�n��t�ren Alt Fonksiyon.
function [pay, payda]=Pay_Ve_Payda_Bulma(sayi) 
    
    basamak=0; % Virg�lden Sonra Ka� Basamak Oldu�unu Bulan Sayac�n Ba�lang�� Atamas�.
    degismeyen_Sayi=sayi; % De�erini Kaybetmemek i�in Kullan�lan Ge�ici De�i�ken Atamas�.
    
    while sayi ~= round(sayi) % Tam Say� Olana Kadar 10 ile �arp�p Virg�lden Sonra Ka� Basamak Oldu�unu Bulan D�ng�.
        sayi=sayi*10;
        basamak=basamak+1; % Virg�lden Sonraki Basamak Sayac� Artt�rmas�.
    end
    
pay=degismeyen_Sayi*(10^basamak); % Tam Say� �eklindeki Pay Hesaplama.
payda=10^basamak; % Tam Say� �eklindeki Payda Hesaplama.
end