function [indis_Ilk, indis_Son]=Proje4_Soru2_MustafaMert_Kaya(B)
    
DiziBoyutuB=length(B); % Dizi Boyutunu Tutmak Ýçin.
minimumFark=abs( B(1)+B(2) ); % Baþlangýç Ýçin Minimum Baþlangýç Atamasý Yapma.
indis_Ilk=B(1); % Ýlk Ýndisin Baþlangýç Atamasý.
indis_Son=B(2); % Son Ýndisin Baþlangýç Atamasý.

% Aþaðýdaki Döngüde Bütün Dizi Elemanlarý Kendi Aralarýnda Toplanýyor Bu Toplamlarda 
% 0'a Daha Yakýn Bir Toplam Elde Edildiðinde MinimumFark Güncelleniyor. Tabi Daha
% Küçük Deðerler Bulunduðu Ýçin Ýlk Ýndis Ve Son Ýndis Deðeride Güncelleniyor. 
for i=1:DiziBoyutuB
    for j=i+1:DiziBoyutuB
        mutlakFark=abs( B(i)+B(j) ); 
        if mutlakFark<minimumFark
            minimumFark=mutlakFark;
            indis_Ilk=B(i);
            indis_Son=B(j);
        end
    end
end
end % Fonksiyon Sonu.


