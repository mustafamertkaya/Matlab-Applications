function sonuc=Proje4_Soru3_MustafaMert_Kaya(A,B)

DiziBoyutuA=length(A); % Dizi Boyutu A Tutma. 
DiziBoyutuB=length(B); % Dizi Boyutu B Tutma.
sonuc=1; % Baslangýçta Sonuc 1 Kabul Edildi.
indisA=DiziBoyutuA; % A'nýn Boyutunu Ters Dizi Oluþturmak Ýçin Kullanma.

if DiziBoyutuA==DiziBoyutuB % Ters Dizi Olabilmeleri Ýçin Öncelikle Boyutlarý Eþit Olmalý.
    
    for indisC=1:DiziBoyutuA 
        C(indisC)=A(indisA); % A Dizisinin Tersi Olan C Dizisini Oluþturma.
        indisA=indisA-1;
    end
    
    % C Dizisi Ýle B Dizisini Karþýlaþtýrma Fark Görürse Direk Döngüden
    % Çýkan Ve 0 Sonucunu Döndürme.
    for i=1:DiziBoyutuB 
        if C(i) ~= B(i)
            sonuc=0;
            break;  
        end
    end
    
else % Boyutlar Eþit Deðilse Geriye 0 Döndürme.
    sonuc=0;
end
end % Fonksiyon Sonu.

